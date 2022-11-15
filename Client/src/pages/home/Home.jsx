import { InputPost } from "../../components/InputPost"
import { Navbar } from "../../components/Navbar"
import { ListPosts } from "../../components/ListPosts"
export function Home() {
  return (
    <>
      <Navbar fixed="true" />
      <section className="w-full pt-0 h-[2000px] bg-purple-light mt-0">
        <div className="flex justify-center flex-col items-center pt-20">
          <InputPost/>
          <ListPosts />
        </div>
        
      </section>

    </>
  )
}


