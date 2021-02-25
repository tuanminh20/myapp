const closeMenuMobile = () => {
  $(".menu_mobile_overlay").removeClass("open");
  $("#humbuger_icon").removeClass("open");
  $("html, body").removeClass("open_menu");
};

const toggleSubmenuListener = () => {
  const $arrButton = $(".menu_mobile_arr");
  const $backButton = $(".menu_mobile_back");

  $arrButton.click(function() {
    $(this).next().addClass("open");
    $("html, body").addClass("open_menu_child");
  });
  $backButton.click(function() {
    $(this).offsetParent().removeClass("open");
    $("html, body").removeClass("open_menu_child");
  });
};

const backToTopListener = () => {
  const delta = 60;
  const $backToTopBtn = $(".back_to_top");
  $(window).scroll(function() {
    const scrollTop = $(this).scrollTop();
    if (scrollTop < delta) {
      $backToTopBtn.removeClass("active");
    } else {
      $backToTopBtn.addClass("active");
    }
  });
  $backToTopBtn.click(function() {
    $("html, body").animate({ scrollTop: 0 }, "slow");
  });
};

const toggleHamburgerIconListener = () => {
  $("#humbuger_icon").click(function() {
    $(this).toggleClass("open");
    $(".menu_mobile_overlay").addClass("open");
    $("html, body").toggleClass("open_menu");
  });
};

const closeMenuMobileListener = () => {
  $(".menu_mobile_overlay, .icon-close-modal").click(function() {
    closeMenuMobile();
  });
};

const hideSearchMobileOnScrollListener = () => {
  let lastScrollTop = 0;
  const $searchBarElm = $("#search_mobile");
  const $searchBarBtnShow = $("#search_bar_show_btn");
  const height = $searchBarElm.outerHeight();

  const show = () => {
    $searchBarBtnShow.hide();
    $searchBarElm.css("margin-top", 0);
  };
  const hide = () => {
    $searchBarElm.css("margin-top", -height);
    $searchBarBtnShow.css("display", "flex");
  };
  $searchBarBtnShow.click(show);
  $(window).scroll(function() {
    let scrollTop = $(this).scrollTop();
    if (lastScrollTop > 16 && scrollTop > lastScrollTop) {
      hide();
    } else {
      show();
    }
    lastScrollTop = scrollTop;
  });
};

document.addEventListener("turbolinks:load", () => {
  closeMenuMobile();
  backToTopListener();
  toggleSubmenuListener();
  toggleHamburgerIconListener();
  closeMenuMobileListener();
  hideSearchMobileOnScrollListener();
});
