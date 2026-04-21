# Media assets

Drop project demo videos and images here. Referenced from `index.html`.

## Currently expected

| Path                | Used by                        | Notes                                                  |
|---------------------|--------------------------------|--------------------------------------------------------|
| `media/dart.mp4`    | Project 01 — Project DART      | UAV–UGV teaming demo (from LinkedIn post)              |
| `media/dart.jpg`    | Project 01 — Project DART      | Optional poster frame (first frame of the video)       |

## Format tips

- **Video**: H.264 MP4, muted, ideally 8–20s loop, 1280×720 or 1920×1080. Keep under ~5 MB so it preloads fast.
- **Poster**: JPG, same aspect as the video, ~200–400 KB.

## How the page uses them

- The `<video>` tag is `muted loop playsinline preload="metadata"`.
- A JS observer autoplays when the card scrolls into view, pauses when it leaves.
- If the file is missing / 404s, the `.proj-video` element stays invisible and the underlying animated canvas keeps playing as a fallback.
- When the video successfully loads, it fades in over the canvas automatically.

## Adding a new project video

1. Save the MP4 as `media/<slug>.mp4`.
2. In `index.html`, find the project's `.media-frame` block.
3. Add above the `.proj-canvas`:
   ```html
   <video class="proj-video" data-video="<slug>" src="media/<slug>.mp4"
          poster="media/<slug>.jpg" muted loop playsinline preload="metadata"></video>
   ```
4. Done — no other changes needed.
