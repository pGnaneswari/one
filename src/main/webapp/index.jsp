<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.5, user-scalable=yes" />
  <title>NexusShop · green & friendly</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous">
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }
    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: #f2f7f2;
      color: #1a2e1a;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }
    button { cursor: pointer; font: inherit; border: none; background: none; color: inherit; }
    input { font: inherit; }

    .container { max-width: 1280px; margin: 0 auto; padding: 0 20px; }
    .flex { display: flex; align-items: center; gap: 12px; flex-wrap: wrap; }
    .flex-between { display: flex; align-items: center; justify-content: space-between; gap: 16px; flex-wrap: wrap; }
    .grid-4 { display: grid; grid-template-columns: repeat(auto-fill, minmax(180px,1fr)); gap: 16px; }
    .grid-2 { display: grid; grid-template-columns: repeat(auto-fill, minmax(160px,1fr)); gap: 14px; }
    .text-muted { color: #3d5a3d; }
    .text-center { text-align: center; }

    /* buttons – green friendly */
    .btn {
      display: inline-flex; align-items: center; justify-content: center; gap: 8px;
      padding: 10px 24px; border-radius: 60px; font-weight: 600; font-size: 0.95rem;
      transition: 0.2s; border: 2px solid transparent;
    }
    .btn-primary { background: #2d7a4a; color: #fff; border-color: #2d7a4a; }
    .btn-primary:hover { background: #1f5f37; border-color: #1f5f37; transform: scale(0.98); box-shadow: 0 6px 18px rgba(45,122,74,0.25); }
    .btn-dark { background: #1a2e1a; color: #f0faf0; border-color: #1a2e1a; }
    .btn-dark:hover { background: #2a452a; }
    .btn-outline { background: transparent; color: #1a2e1a; border-color: #b3cfb3; }
    .btn-outline:hover { background: #1a2e1a; color: #f0faf0; border-color: #1a2e1a; }
    .btn-ghost { background: rgba(255,255,255,0.12); color: #fff; border-color: rgba(255,255,255,0.2); }
    .btn-ghost:hover { background: rgba(255,255,255,0.2); }
    .btn-success { background: #1f7a4a; color: #fff; border-color: #1f7a4a; }
    .btn-success:hover { background: #15603a; }

    /* header – green tint */
    header { background: rgba(242, 247, 242, 0.92); backdrop-filter: blur(10px); border-bottom: 1px solid rgba(26,46,26,0.05); position: sticky; top: 0; z-index: 40; }
    .brand { font-weight: 800; font-size: 1.4rem; letter-spacing: -0.4px; display: flex; align-items: center; gap: 8px; color: #1a2e1a; }
    .brand i { color: #2d7a4a; font-size: 1.6rem; }
    .brand span.accent { color: #2d7a4a; }

    .nav-links { display: flex; gap: 2px; list-style: none; }
    .nav-links a { padding: 6px 14px; border-radius: 30px; font-weight: 500; font-size: 0.9rem; color: #3d5a3d; transition: 0.15s; }
    .nav-links a:hover, .nav-links a.active { background: #dce8dc; color: #1a2e1a; }

    .header-actions { display: flex; align-items: center; gap: 4px; }
    .icon-btn { width: 40px; height: 40px; border-radius: 40px; display: grid; place-items: center; font-size: 1.1rem; color: #3d5a3d; transition: 0.15s; }
    .icon-btn:hover { background: #dce8dc; color: #1a2e1a; }
    .cart-wrap { position: relative; }
    .cart-count { position: absolute; top: -2px; right: -2px; background: #2d7a4a; color: #fff; font-size: 0.65rem; font-weight: 700; width: 20px; height: 20px; border-radius: 20px; display: grid; place-items: center; border: 2px solid #f2f7f2; }

    .search-wrap { display: flex; align-items: center; background: #e4efe4; border-radius: 60px; padding: 0 16px 0 18px; border: 2px solid transparent; transition: 0.15s; min-width: 180px; }
    .search-wrap:focus-within { border-color: #2d7a4a; background: #fff; box-shadow: 0 0 0 4px rgba(45,122,74,0.08); }
    .search-wrap input { border: 0; background: transparent; outline: none; width: 100%; padding: 10px 0; font-size: 0.9rem; color: #1a2e1a; }
    .search-wrap input::placeholder { color: #6b8a6b; }
    .search-wrap button { padding: 8px 0 8px 8px; color: #4d6b4d; transition: 0.15s; }
    .search-wrap button:hover { color: #2d7a4a; }

    .mobile-toggle { display: none; width: 42px; height: 42px; border-radius: 42px; background: #e4efe4; font-size: 1.2rem; color: #1a2e1a; }
    .mobile-toggle:hover { background: #cde0cd; }
    #mobileMenu { display: none; background: #f6fbf6; border-top: 1px solid rgba(26,46,26,0.04); padding: 12px 0 18px; }
    #mobileMenu ul { list-style: none; display: flex; flex-direction: column; gap: 2px; }
    #mobileMenu ul li a { display: flex; align-items: center; gap: 12px; padding: 12px 16px; border-radius: 12px; font-weight: 500; color: #1a2e1a; }
    #mobileMenu ul li a:hover { background: #e4efe4; }

    /* hero – green gradient */
    .hero { background: linear-gradient(145deg, #1a2e1a, #2a4d2a); border-radius: 24px; padding: 44px 32px; margin: 20px 0 10px; position: relative; overflow: hidden; }
    .hero::after { content: ''; position: absolute; inset: 0; background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat; opacity: 0.15; z-index: 0; }
    .hero .container { position: relative; z-index: 1; }
    .hero .badge { display: inline-block; background: rgba(45,122,74,0.25); color: #b0dfb0; padding: 4px 18px; border-radius: 40px; font-weight: 600; font-size: 0.8rem; letter-spacing: 0.3px; margin-bottom: 12px; }
    .hero h1 { font-size: 2.8rem; font-weight: 800; color: #fff; line-height: 1.1; max-width: 600px; letter-spacing: -0.02em; }
    .hero p { color: rgba(255,255,255,0.8); font-size: 1.05rem; max-width: 480px; margin: 10px 0 22px; }
    .hero .actions { display: flex; gap: 12px; flex-wrap: wrap; }

    /* section */
    .section { padding: 40px 0; }
    .section-header { display: flex; align-items: flex-end; justify-content: space-between; gap: 12px; flex-wrap: wrap; margin-bottom: 24px; }
    .section-header h2 { font-size: 1.7rem; font-weight: 700; letter-spacing: -0.3px; color: #1a2e1a; }
    .section-header p { color: #3d5a3d; margin-top: 2px; }
    .view-all { font-weight: 600; color: #2d7a4a; display: flex; align-items: center; gap: 6px; font-size: 0.9rem; white-space: nowrap; }
    .view-all:hover { gap: 12px; color: #1f5f37; }

    /* categories – green accents */
    .cat-card { background: #fff; border-radius: 20px; padding: 20px 10px; text-align: center; box-shadow: 0 4px 12px rgba(0,0,0,0.02); transition: 0.2s; border: 2px solid transparent; cursor: pointer; }
    .cat-card:hover { transform: translateY(-4px); box-shadow: 0 10px 28px rgba(0,0,0,0.05); border-color: #b3d9b3; }
    .cat-card .icon-wrap { width: 52px; height: 52px; border-radius: 52px; background: #e0f0e0; display: grid; place-items: center; margin: 0 auto 10px; font-size: 1.4rem; color: #2d7a4a; transition: 0.15s; }
    .cat-card:hover .icon-wrap { background: #2d7a4a; color: #fff; }
    .cat-card h4 { font-size: 0.95rem; font-weight: 600; color: #1a2e1a; }
    .cat-card .count { font-size: 0.8rem; color: #4d6b4d; }

    /* products – green friendly */
    .product-card { background: #fff; border-radius: 20px; overflow: hidden; box-shadow: 0 4px 12px rgba(0,0,0,0.02); transition: 0.25s; border: 2px solid transparent; display: flex; flex-direction: column; }
    .product-card:hover { transform: translateY(-5px); box-shadow: 0 12px 32px rgba(0,0,0,0.05); border-color: #b3d9b3; }
    .product-card .img-wrap { position: relative; background: #eaf3ea; aspect-ratio: 1/1; overflow: hidden; }
    .product-card .img-wrap img { width: 100%; height: 100%; object-fit: cover; transition: 0.25s; }
    .product-card:hover .img-wrap img { transform: scale(1.03); }
    .product-card .badge { position: absolute; top: 10px; left: 10px; background: #2d7a4a; color: #fff; padding: 2px 12px; border-radius: 30px; font-size: 0.65rem; font-weight: 700; letter-spacing: 0.3px; }
    .product-card .badge.sale { background: #d4a24e; color: #1a2e1a; }
    .product-card .wish-btn { position: absolute; top: 10px; right: 10px; width: 34px; height: 34px; border-radius: 34px; background: rgba(255,255,255,0.9); display: grid; place-items: center; font-size: 0.9rem; color: #4d6b4d; backdrop-filter: blur(4px); transition: 0.15s; }
    .product-card .wish-btn:hover { background: #fff; color: #2d7a4a; transform: scale(1.08); }

    .product-card .body { padding: 14px 16px 8px; flex: 1; display: flex; flex-direction: column; gap: 4px; }
    .product-card .body .cat-tag { font-size: 0.7rem; color: #6b8a6b; text-transform: uppercase; letter-spacing: 0.5px; font-weight: 600; }
    .product-card .body h5 { font-size: 0.95rem; font-weight: 600; line-height: 1.3; color: #1a2e1a; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; }
    .product-card .body .price-row { display: flex; align-items: center; gap: 8px; margin-top: 4px; flex-wrap: wrap; }
    .product-card .body .price { font-weight: 700; font-size: 1.1rem; color: #1a2e1a; }
    .product-card .body .old-price { color: #8aaa8a; text-decoration: line-through; font-size: 0.85rem; }
    .product-card .body .rating { display: flex; align-items: center; gap: 4px; font-size: 0.8rem; color: #d4a24e; }
    .product-card .body .rating span { color: #4d6b4d; font-weight: 400; }

    .product-card .footer { padding: 0 16px 16px; display: flex; gap: 8px; }
    .product-card .footer .add-btn { flex: 1; padding: 10px; border-radius: 40px; background: #1a2e1a; color: #f0faf0; font-weight: 600; font-size: 0.8rem; transition: 0.15s; display: flex; align-items: center; justify-content: center; gap: 6px; }
    .product-card .footer .add-btn:hover { background: #2d7a4a; transform: scale(0.98); }
    .product-card .footer .add-btn.added { background: #1f7a4a; }

    /* deal – green theme */
    .deal-wrap { background: #fff; border-radius: 24px; overflow: hidden; box-shadow: 0 6px 20px rgba(0,0,0,0.02); display: flex; flex-wrap: wrap; }
    .deal-wrap .deal-img { flex: 1 1 240px; min-height: 200px; background: #dce8dc; }
    .deal-wrap .deal-img img { width: 100%; height: 100%; object-fit: cover; }
    .deal-wrap .deal-content { flex: 2 1 300px; padding: 28px 32px; display: flex; flex-direction: column; justify-content: center; }
    .deal-wrap .deal-content .tag { background: #d4a24e; color: #1a2e1a; padding: 2px 14px; border-radius: 40px; font-size: 0.7rem; font-weight: 700; text-transform: uppercase; align-self: flex-start; margin-bottom: 8px; }
    .deal-wrap .deal-content h3 { font-size: 1.6rem; font-weight: 700; color: #1a2e1a; }
    .deal-wrap .deal-content .desc { color: #3d5a3d; margin: 4px 0 12px; }
    .deal-wrap .deal-content .price-big { font-size: 2rem; font-weight: 800; color: #1a2e1a; }
    .deal-wrap .deal-content .price-big .old { font-size: 1.1rem; font-weight: 400; color: #8aaa8a; text-decoration: line-through; margin-left: 10px; }
    .deal-wrap .deal-content .stock { font-size: 0.9rem; color: #3d5a3d; margin: 4px 0 14px; }
    .deal-wrap .deal-content .stock strong { color: #2d7a4a; }

    .timer-grid { display: flex; gap: 10px; margin: 6px 0 16px; flex-wrap: wrap; }
    .timer-box { background: #1a2e1a; color: #f0faf0; padding: 6px 14px; border-radius: 12px; min-width: 56px; text-align: center; }
    .timer-box .num { font-size: 1.5rem; font-weight: 700; line-height: 1.2; }
    .timer-box .label { font-size: 0.6rem; opacity: 0.7; text-transform: uppercase; letter-spacing: 0.3px; }

    /* testimonials – green friendly */
    .testimonials-scroll { display: flex; gap: 18px; overflow-x: auto; padding: 6px 2px 16px; scroll-snap-type: x mandatory; }
    .testimonials-scroll::-webkit-scrollbar { height: 4px; }
    .testimonials-scroll::-webkit-scrollbar-thumb { background: #b3d9b3; border-radius: 10px; }
    .testimonial-card { flex: 0 0 280px; background: #fff; border-radius: 20px; padding: 20px 22px; box-shadow: 0 4px 12px rgba(0,0,0,0.02); scroll-snap-align: start; }
    .testimonial-card .stars { color: #d4a24e; font-size: 0.9rem; letter-spacing: 2px; margin-bottom: 6px; }
    .testimonial-card blockquote { font-size: 0.95rem; line-height: 1.5; color: #1a2e1a; margin-bottom: 12px; font-style: italic; }
    .testimonial-card .author { display: flex; align-items: center; gap: 10px; }
    .testimonial-card .author .avatar { width: 40px; height: 40px; border-radius: 40px; object-fit: cover; background: #dce8dc; }
    .testimonial-card .author .name { font-weight: 600; font-size: 0.85rem; color: #1a2e1a; }
    .testimonial-card .author .role { font-size: 0.75rem; color: #4d6b4d; }

    /* newsletter – green gradient */
    .newsletter-wrap { background: linear-gradient(145deg, #1a2e1a, #2a4d2a); border-radius: 24px; padding: 36px 40px; color: #fff; display: flex; align-items: center; justify-content: space-between; gap: 28px; flex-wrap: wrap; }
    .newsletter-wrap .text h3 { font-size: 1.5rem; font-weight: 700; }
    .newsletter-wrap .text p { opacity: 0.7; font-size: 0.95rem; }
    .newsletter-wrap form { display: flex; gap: 10px; flex: 1; max-width: 480px; flex-wrap: wrap; }
    .newsletter-wrap form input { flex: 1; min-width: 180px; padding: 12px 20px; border-radius: 60px; border: 0; font-size: 0.95rem; background: rgba(255,255,255,0.08); color: #fff; outline: 2px solid transparent; transition: 0.15s; }
    .newsletter-wrap form input::placeholder { color: rgba(255,255,255,0.4); }
    .newsletter-wrap form input:focus { outline-color: #2d7a4a; background: rgba(255,255,255,0.14); }
    .newsletter-wrap form .btn { background: #2d7a4a; color: #fff; border-color: #2d7a4a; padding: 12px 28px; }
    .newsletter-wrap form .btn:hover { background: #1f5f37; border-color: #1f5f37; }
    #newsletterMsg { margin-top: 8px; font-size: 0.9rem; opacity: 0.9; width: 100%; }

    /* footer – green */
    footer { padding: 36px 0 18px; border-top: 1px solid rgba(26,46,26,0.05); margin-top: 12px; background: #f6fbf6; }
    .footer-grid { display: grid; grid-template-columns: 2fr 1fr 1fr 1fr; gap: 28px; margin-bottom: 24px; }
    .footer-grid .brand-col .brand { font-size: 1.2rem; margin-bottom: 6px; color: #1a2e1a; }
    .footer-grid .brand-col p { color: #3d5a3d; font-size: 0.9rem; max-width: 280px; }
    .footer-grid .brand-col .socials { display: flex; gap: 8px; margin-top: 12px; }
    .footer-grid .brand-col .socials a { width: 38px; height: 38px; border-radius: 38px; background: #e4efe4; display: grid; place-items: center; color: #3d5a3d; transition: 0.15s; font-size: 0.9rem; }
    .footer-grid .brand-col .socials a:hover { background: #2d7a4a; color: #fff; }
    .footer-grid .col h5 { font-weight: 700; font-size: 0.9rem; margin-bottom: 10px; color: #1a2e1a; }
    .footer-grid .col ul { list-style: none; display: flex; flex-direction: column; gap: 4px; }
    .footer-grid .col ul li a { color: #3d5a3d; font-size: 0.85rem; transition: 0.15s; }
    .footer-grid .col ul li a:hover { color: #2d7a4a; }
    .footer-bottom { text-align: center; padding-top: 16px; border-top: 1px solid rgba(26,46,26,0.05); color: #6b8a6b; font-size: 0.8rem; }

    /* responsive */
    @media (max-width: 992px) {
      .hero h1 { font-size: 2.2rem; }
      .footer-grid { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 768px) {
      .nav-links { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .search-wrap { min-width: 120px; padding: 0 10px 0 14px; }
      .search-wrap input { font-size: 0.8rem; padding: 8px 0; }
      .hero { padding: 32px 20px; }
      .hero h1 { font-size: 1.8rem; }
      .section { padding: 28px 0; }
      .section-header h2 { font-size: 1.3rem; }
      .grid-4 { grid-template-columns: repeat(2,1fr); }
      .deal-wrap .deal-content { padding: 20px; }
      .newsletter-wrap { padding: 24px 20px; flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .timer-box { min-width: 48px; padding: 4px 10px; }
      .timer-box .num { font-size: 1.1rem; }
      .footer-grid { grid-template-columns: 1fr; gap: 16px; }
    }
    @media (max-width: 480px) {
      .grid-4 { grid-template-columns: 1fr 1fr; gap: 10px; }
      .product-card .body h5 { font-size: 0.8rem; }
      .product-card .body .price { font-size: 0.95rem; }
      .product-card .footer .add-btn { font-size: 0.7rem; padding: 8px; }
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner flex-between">
    <div class="flex">
      <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></a>
    </div>
    <nav>
      <ul class="nav-links">
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-list"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>
    <div class="flex">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search…" aria-label="Search">
        <button id="searchBtn" aria-label="search"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" aria-label="account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" aria-label="cart"><i class="fas fa-shopping-bag"></i></button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-list"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
        <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- hero -->
  <section class="hero" aria-label="banner">
    <div class="container">
      <div class="badge"><i class="fas fa-sparkles"></i> New arrivals</div>
      <h1>Premium picks<br>for every day</h1>
      <p>Curated fashion, tech & accessories. Free shipping on first order.</p>
      <div class="actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore deals</button>
      </div>
    </div>
  </section>

  <!-- categories -->
  <section class="section" id="categories">
    <div class="container">
      <div class="section-header">
        <div><h2>Shop by category</h2><p class="text-muted">Find what you love</p></div>
        <a href="#" class="view-all">All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="grid-2" id="categoriesGrid"></div>
    </div>
  </section>

  <!-- products -->
  <section class="section" id="products">
    <div class="container">
      <div class="section-header">
        <div><h2>Trending now</h2><p class="text-muted">Popular picks from the community</p></div>
        <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="grid-4" id="productsGrid"></div>
    </div>
  </section>

  <!-- deal -->
  <section class="section" id="deals">
    <div class="container">
      <div class="section-header"><div><h2>⚡ Flash deal</h2><p class="text-muted">Hurry, limited stock</p></div></div>
      <div class="deal-wrap">
        <div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air" loading="lazy"></div>
        <div class="deal-content">
          <span class="tag"><i class="fas fa-bolt"></i> limited offer</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Thin, light, and incredibly fast — the M2 chip redefines performance.</p>
          <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
          <p class="stock">Only <strong>12</strong> items left — grab yours!</p>
          <div class="timer-grid" id="dealTimer">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
          </div>
          <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
        </div>
      </div>
    </div>
  </section>

  <!-- testimonials -->
  <section class="section" id="testimonials">
    <div class="container">
      <div class="section-header"><div><h2>Real reviews</h2><p class="text-muted">What customers say</p></div></div>
      <div class="testimonials-scroll" id="testimonialsList"></div>
    </div>
  </section>

  <!-- newsletter -->
  <section class="section">
    <div class="container">
      <div class="newsletter-wrap">
        <div class="text"><h3>Stay inspired</h3><p>Exclusive offers & early access</p></div>
        <form id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required>
          <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="brand-col">
        <div class="brand"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></div>
        <p>Modern e‑commerce demo — quality products, seamless experience.</p>
        <div class="socials">
          <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div class="col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li></ul></div>
      <div class="col"><h5>Support</h5><ul><li><a href="#">Help</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li></ul></div>
      <div class="col"><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms
