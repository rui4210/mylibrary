class ReadingSituation < ActiveHash::Base
  self.data = [
   { id: 1, name: '--' },
   { id: 2, name: '読んだ本' },
   { id: 3, name: '読みたい本' },
   { id: 4, name: 'お気に入り' }
 ]
end
