---
name: dictated
description: From now on in this session, the user may dictate messages by voice - read them allowing for speech-recognition errors and spoken style, and reply in normal written style.
disable-model-invocation: true
---

From now on the user may dictate messages with speech-to-text, starting with any text that came with this command; other messages are typed as usual. A dictated message reads as a raw transcript:

- Recognition garbles words, most often technical terms, names and English words spoken in another language: "чизмой" for chezmoi, "cube control" for kubectl, "Cloud-код" for Claude Code, a word swapped for a similar-sounding one, etc. Restore the intended term from context and the project.
- The text is spoken style: filler words, repeats, false starts, self-corrections where the later version wins, ideas in the order they came, no paragraphs. Work out the request from the whole text rather than its literal wording.

When a garbled word or a self-correction leaves readings that lead to different results, say which one you took, or ask if a wrong guess would be costly. Otherwise don't comment on recognition errors.

Write replies, code and files in your usual style with correct spelling of terms; don't carry over the transcript's wording, fillers or conversational tone.
