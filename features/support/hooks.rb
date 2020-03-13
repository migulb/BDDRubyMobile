require "base64"

Before do
    $driver.start_driver
    @cadastro=Screen_Cadastro.new()
end

After do
    screenshot = $driver.screenshot_as(:base64)
    embed(screenshot, "image/png", "Screenshot")
    $driver.quit_driver
end