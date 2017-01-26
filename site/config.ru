use Rack::Static,
  :urls => ["/images", "/html", "/css", "/sounds"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/html/index.html', File::RDONLY)
  ]
}