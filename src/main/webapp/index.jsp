<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.5, user-scalable=yes" />
  <title>NexusShop · friendly commerce</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous">
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }
    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: #f7f7f5;
      color: #191e2b;
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
    .mt-1 { margin-top: 8px; }
    .mb-1 { margin-bottom: 8px; }
    .text-muted { color: #60687a; }
    .text-center { text-align: center; }

    /* buttons */
    .btn {
      display: inline-flex; align-items: center; justify-content: center; gap: 8px;
      padding: 10px 24px; border-radius: 60px; font-weight: 600; font-size: 0.95rem;
      transition: 0.2s; border: 2px solid transparent;
    }
    .btn-primary { background: #d96c4e; color: #fff; border-color: #d96c4e; }
    .btn-primary:hover { background: #bf573b; border-color: #bf573b; transform: scale(0.98); box-shadow: 0 6px 18px rgba(217,108,78,0.25); }
    .btn-dark { background: #191e2b; color: #fff; border-color: #191e2b; }
    .btn-dark:hover { background: #2f3649; }
    .btn-outline { background: transparent; color: #191e2b; border-color: #d0d4dd; }
    .btn-outline:hover { background: #191e2b; color: #fff; border-color: #191e2b; }
    .btn-ghost { background: rgba(255,255,255,0.12); color: #fff; border-color: rgba(255,255,255,0.2); }
    .btn-ghost:hover { background: rgba(255,255,255,0.2); }
    .btn-sm { padding: 6px 16px; font-size: 0.8rem; }
    .btn-success { background: #2a8e7a; color: #fff; border-color: #2a8e7a; }
    .btn-success:hover { background: #1e7563; }

    /* header */
    header { background: rgba(255,255,248,0.92); backdrop-filter: blur(10px); border-bottom: 1px solid rgba(0,0,0,0.03); position: sticky; top: 0; z-index: 40; }
    .header-inner { padding: 10px 0; min-height: 64px; }
    .brand { font-weight: 800; font-size: 1.4rem; letter-spacing: -0.4px; display: flex; align-items: center; gap: 8px; }
    .brand i { color: #d96c4e; font-size: 1.6rem; }
    .brand span.accent { color: #d96c4e; }

    .nav-links { display: flex; gap: 2px; list-style: none; }
    .nav-links a { padding: 6px 14px; border-radius: 30px; font-weight: 500; font-size: 0.9rem; color: #4f5668; transition: 0.15s; }
    .nav-links a:hover, .nav-links a.active { background: #ededea; color: #191e2b; }

    .header-actions { display: flex; align-items: center; gap: 4px; }
    .icon-btn { width: 40px; height: 40px; border-radius: 40px; display: grid; place-items: center; font-size: 1.1rem; color: #4f5668; transition: 0.15s; }
    .icon-btn:hover { background: #ededea; color: #191e2b; }
    .cart-wrap { position: relative; }
    .cart-count { position: absolute; top: -2px; right: -2px; background: #d96c4e; color: #fff; font-size: 0.65rem; font-weight: 700; width: 20px; height: 20px; border-radius: 20px; display: grid; place-items: center; border: 2px solid #fff; }

    .search-wrap { display: flex; align-items: center; background: #f0f0ed; border-radius: 60px; padding: 0 16px 0 18px; border: 2px solid transparent; transition: 0.15s; min-width: 180px; }
    .search-wrap:focus-within { border-color: #d96c4e; background: #fff; box-shadow: 0 0 0 4px rgba(217,108,78,0.08); }
    .search-wrap input { border: 0; background: transparent; outline: none; width: 100%; padding: 10px 0; font-size: 0.9rem; }
    .search-wrap input::placeholder { color: #a4aaba; }
    .search-wrap button { padding: 8px 0 8px 8px; color: #7b8398; transition: 0.15s; }
    .search-wrap button:hover { color: #d96c4e; }

    .mobile-toggle { display: none; width: 42px; height: 42px; border-radius: 42px; background: #f0f0ed; font-size: 1.2rem; }
    .mobile-toggle:hover { background: #e1dfda; }
    #mobileMenu { display: none; background: #fffcf9; border-top: 1px solid rgba(0,0,0,0.03); padding: 12px 0 18px; }
    #mobileMenu ul { list-style: none; display: flex; flex-direction: column; gap: 2px; }
    #mobileMenu ul li a { display: flex; align-items: center; gap: 12px; padding: 12px 16px; border-radius: 12px; font-weight: 500; color: #191e2b; }
    #mobileMenu ul li a:hover { background: #f4f3ef; }

    /* hero */
    .hero { background: linear-gradient(145deg, #1b212f, #2b3245); border-radius: 24px; padding: 44px 32px; margin: 20px 0 10px; position: relative; overflow: hidden; }
    .hero::after { content: ''; position: absolute; inset: 0; background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat; opacity: 0.2; z-index: 0; }
    .hero .container { position: relative; z-index: 1; }
    .hero .badge { display: inline-block; background: rgba(217,108,78,0.2); color: #f5b8a4; padding: 4px 18px; border-radius: 40px; font-weight: 600; font-size: 0.8rem; letter-spacing: 0.3px; margin-bottom: 12px; }
    .hero h1 { font-size: 2.8rem; font-weight: 800; color: #fff; line-height: 1.1; max-width: 600px; letter-spacing: -0.02em; }
    .hero p { color: rgba(255,255,255,0.8); font-size: 1.05rem; max-width: 480px; margin: 10px 0 22px; }
    .hero .actions { display: flex; gap: 12px; flex-wrap: wrap; }

    /* section */
    .section { padding: 40px 0; }
    .section-header { display: flex; align-items: flex-end; justify-content: space-between; gap: 12px; flex-wrap: wrap; margin-bottom: 24px; }
    .section-header h2 { font-size: 1.7rem; font-weight: 700; letter-spacing: -0.3px; }
    .section-header p { color: #60687a; margin-top: 2px; }
    .view-all { font-weight: 600; color: #d96c4e; display: flex; align-items: center; gap: 6px; font-size: 0.9rem; white-space: nowrap; }
    .view-all:hover { gap: 12px; color: #bf573b; }

    /* categories */
    .cat-card { background: #fff; border-radius: 20px; padding: 20px 10px; text-align: center; box-shadow: 0 4px 12px rgba(0,0,0,0.02); transition: 0.2s; border: 2px solid transparent; cursor: pointer; }
    .cat-card:hover { transform: translateY(-4px); box-shadow: 0 10px 28px rgba(0,0,0,0.06); border-color: #eedbd4; }
    .cat-card .icon-wrap { width: 52px; height: 52px; border-radius: 52px; background: #f5e8e2; display: grid; place-items: center; margin: 0 auto 10px; font-size: 1.4rem; color: #d96c4e; transition: 0.15s; }
    .cat-card:hover .icon-wrap { background: #d96c4e; color: #fff; }
    .cat-card h4 { font-size: 0.95rem; font-weight: 600; }
    .cat-card .count { font-size: 0.8rem; color: #7b8398; }

    /* products */
    .product-card { background: #fff; border-radius: 20px; overflow: hidden; box-shadow: 0 4px 12px rgba(0,0,0,0.02); transition: 0.25s; border: 2px solid transparent; display: flex; flex-direction: column; }
    .product-card:hover { transform: translateY(-5px); box-shadow: 0 12px 32px rgba(0,0,0,0.06); border-color: #eedbd4; }
    .product-card .img-wrap { position: relative; background: #f2f2ef; aspect-ratio: 1/1; overflow: hidden; }
    .product-card .img-wrap img { width: 100%; height: 100%; object-fit: cover; transition: 0.25s; }
    .product-card:hover .img-wrap img { transform: scale(1.03); }
    .product-card .badge { position: absolute; top: 10px; left: 10px; background: #d96c4e; color: #fff; padding: 2px 12px; border-radius: 30px; font-size: 0.65rem; font-weight: 700; letter-spacing: 0.3px; }
    .product-card .badge.sale { background: #e3b35c; color: #191e2b; }
    .product-card .wish-btn { position: absolute; top: 10px; right: 10px; width: 34px; height: 34px; border-radius: 34px; background: rgba(255,255,255,0.9); display: grid; place-items: center; font-size: 0.9rem; color: #7b8398; backdrop-filter: blur(4px); transition: 0.15s; }
    .product-card .wish-btn:hover { background: #fff; color: #d96c4e; transform: scale(1.08); }

    .product-card .body { padding: 14px 16px 8px; flex: 1; display: flex; flex-direction: column; gap: 4px; }
    .product-card .body .cat-tag { font-size: 0.7rem; color: #9ea6b8; text-transform: uppercase; letter-spacing: 0.5px; font-weight: 600; }
    .product-card .body h5 { font-size: 0.95rem; font-weight: 600; line-height: 1.3; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; }
    .product-card .body .price-row { display: flex; align-items: center; gap: 8px; margin-top: 4px; flex-wrap: wrap; }
    .product-card .body .price { font-weight: 700; font-size: 1.1rem; }
    .product-card .body .old-price { color: #a4aaba; text-decoration: line-through; font-size: 0.85rem; }
    .product-card .body .rating { display: flex; align-items: center; gap: 4px; font-size: 0.8rem; color: #f3b34c; }
    .product-card .body .rating span { color: #7b8398; font-weight: 400; }

    .product-card .footer { padding: 0 16px 16px; display: flex; gap: 8px; }
    .product-card .footer .add-btn { flex: 1; padding: 10px; border-radius: 40px; background: #191e2b; color: #fff; font-weight: 600; font-size: 0.8rem; transition: 0.15s; display: flex; align-items: center; justify-content: center; gap: 6px; }
    .product-card .footer .add-btn:hover { background: #d96c4e; transform: scale(0.98); }
    .product-card .footer .add-btn.added { background: #2a8e7a; }

    /* deal */
    .deal-wrap { background: #fff; border-radius: 24px; overflow: hidden; box-shadow: 0 6px 20px rgba(0,0,0,0.02); display: flex; flex-wrap: wrap; }
    .deal-wrap .deal-img { flex: 1 1 240px; min-height: 200px; background: #eaeae6; }
    .deal-wrap .deal-img img { width: 100%; height: 100%; object-fit: cover; }
    .deal-wrap .deal-content { flex: 2 1 300px; padding: 28px 32px; display: flex; flex-direction: column; justify-content: center; }
    .deal-wrap .deal-content .tag { background: #e3b35c; color: #191e2b; padding: 2px 14px; border-radius: 40px; font-size: 0.7rem; font-weight: 700; text-transform: uppercase; align-self: flex-start; margin-bottom: 8px; }
    .deal-wrap .deal-content h3 { font-size: 1.6rem; font-weight: 700; }
    .deal-wrap .deal-content .desc { color: #60687a; margin: 4px 0 12px; }
    .deal-wrap .deal-content .price-big { font-size: 2rem; font-weight: 800; }
    .deal-wrap .deal-content .price-big .old { font-size: 1.1rem; font-weight: 400; color: #a4aaba; text-decoration: line-through; margin-left: 10px; }
    .deal-wrap .deal-content .stock { font-size: 0.9rem; color: #60687a; margin: 4px 0 14px; }
    .deal-wrap .deal-content .stock strong { color: #d96c4e; }

    .timer-grid { display: flex; gap: 10px; margin: 6px 0 16px; flex-wrap: wrap; }
    .timer-box { background: #191e2b; color: #fff; padding: 6px 14px; border-radius: 12px; min-width: 56px; text-align: center; }
    .timer-box .num { font-size: 1.5rem; font-weight: 700; line-height: 1.2; }
    .timer-box .label { font-size: 0.6rem; opacity: 0.7; text-transform: uppercase; letter-spacing: 0.3px; }

    /* testimonials */
    .testimonials-scroll { display: flex; gap: 18px; overflow-x: auto; padding: 6px 2px 16px; scroll-snap-type: x mandatory; }
    .testimonials-scroll::-webkit-scrollbar { height: 4px; }
    .testimonials-scroll::-webkit-scrollbar-thumb { background: #d9ccc5; border-radius: 10px; }
    .testimonial-card { flex: 0 0 280px; background: #fff; border-radius: 20px; padding: 20px 22px; box-shadow: 0 4px 12px rgba(0,0,0,0.02); scroll-snap-align: start; }
    .testimonial-card .stars { color: #f3b34c; font-size: 0.9rem; letter-spacing: 2px; margin-bottom: 6px; }
    .testimonial-card blockquote { font-size: 0.95rem; line-height: 1.5; color: #191e2b; margin-bottom: 12px; font-style: italic; }
    .testimonial-card .author { display: flex; align-items: center; gap: 10px; }
    .testimonial-card .author .avatar { width: 40px; height: 40px; border-radius: 40px; object-fit: cover; background: #eaeae6; }
    .testimonial-card .author .name { font-weight: 600; font-size: 0.85rem; }
    .testimonial-card .author .role { font-size: 0.75rem; color: #7b8398; }

    /* newsletter */
    .newsletter-wrap { background: linear-gradient(145deg, #1b212f, #2b3245); border-radius: 24px; padding: 36px 40px; color: #fff; display: flex; align-items: center; justify-content: space-between; gap: 28px; flex-wrap: wrap; }
    .newsletter-wrap .text h3 { font-size: 1.5rem; font-weight: 700; }
    .newsletter-wrap .text p { opacity: 0.7; font-size: 0.95rem; }
    .newsletter-wrap form { display: flex; gap: 10px; flex: 1; max-width: 480px; flex-wrap: wrap; }
    .newsletter-wrap form input { flex: 1; min-width: 180px; padding: 12px 20px; border-radius: 60px; border: 0; font-size: 0.95rem; background: rgba(255,255,255,0.08); color: #fff; outline: 2px solid transparent; transition: 0.15s; }
    .newsletter-wrap form input::placeholder { color: rgba(255,255,255,0.4); }
    .newsletter-wrap form input:focus { outline-color: #d96c4e; background: rgba(255,255,255,0.14); }
    .newsletter-wrap form .btn { background: #d96c4e; color: #fff; border-color: #d96c4e; padding: 12px 28px; }
    .newsletter-wrap form .btn:hover { background: #bf573b; border-color: #bf573b; }
    #newsletterMsg { margin-top: 8px; font-size: 0.9rem; opacity: 0.9; width: 100%; }

    /* footer */
    footer { padding: 36px 0 18px; border-top: 1px solid rgba(0,0,0,0.04); margin-top: 12px; }
    .footer-grid { display: grid; grid-template-columns: 2fr 1fr 1fr 1fr; gap: 28px; margin-bottom: 24px; }
    .footer-grid .brand-col .brand { font-size: 1.2rem; margin-bottom: 6px; }
    .footer-grid .brand-col p { color: #60687a; font-size: 0.9rem; max-width: 280px; }
    .footer-grid .brand-col .socials { display: flex; gap: 8px; margin-top: 12px; }
    .footer-grid .brand-col .socials a { width: 38px; height: 38px; border-radius: 38px; background: #f0f0ed; display: grid; place-items: center; color: #4f5668; transition: 0.15s; font-size: 0.9rem; }
    .footer-grid .brand-col .socials a:hover { background: #d96c4e; color: #fff; }
    .footer-grid .col h5 { font-weight: 700; font-size: 0.9rem; margin-bottom: 10px; }
    .footer-grid .col ul { list-style: none; display: flex; flex-direction: column; gap: 4px; }
    .footer-grid .col ul li a { color: #60687a; font-size: 0.85rem; transition: 0.15s; }
    .footer-grid .col ul li a:hover { color: #d96c4e; }
    .footer-bottom { text-align: center; padding-top: 16px; border-top: 1px solid rgba(0,0,0,0.04); color: #a4aaba; font-size: 0.8rem; }

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
      <div class="col"><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul></div>
    </div>
    <div class="footer-bottom">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<script>
  // DATA
  const CATEGORIES = [
    { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
    { id: 'accessories
