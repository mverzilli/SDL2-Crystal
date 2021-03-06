require "sdl2/sdl2"

width  = 1280
height = 720

SDL2.init

window = SDL2.create_window("hello", 100, 100, width, height, LibSDL2::WINDOW_SHOWN | LibSDL2::WINDOW_RESIZABLE)
renderer = SDL2.create_renderer(window, -1, LibSDL2::RENDERER_ACCELERATED)
# image = SDL2.load_bmp("hello.bmp")

running = true
while running
  renderer.clear
  renderer.present
  SDL2.poll_events do |event|
    case event.type
    when LibSDL2::QUIT
      running = false
    end
  end
end

SDL2.quit
