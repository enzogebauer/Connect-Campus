import { Navbar } from "../../components/navbar"


export const Profile = () => {
  return (
    <>
      <Navbar />
     
        <div className="w-full pt-0 h-screen bg-purple-light mt-0  justify-center">
          <div className="p-8 mt-24 bg-white ">
            <div className="grid grid-cols-1 md:grid-cols-3">
              <div className="grid grid-cols-3 text-center order-last md:order-first mt-20 md:mt-0">
                <div>
                  <p className="font-bold text-gray-700 text-xl">100</p>
                  <p className="text-gray-400">Followers</p>
                </div>
                <div>
                  <p className="font-bold text-gray-700 text-xl">60</p>
                  <p className="text-gray-400">Follow</p>
                </div>
                <div>
                  <p className="font-bold text-gray-700 text-xl">44</p>
                  <p className="text-gray-400">Posts</p>
                </div>
              </div>
              <div className="relative">
                <div className="w-48 h-48 bg-indigo-100 mx-auto rounded-full shadow-2xl absolute inset-x-0 top-0 -mt-24 flex items-center justify-center text-indigo-500">
                  <img  className="h-24 w-24 object-cover" src="../../../assets/bluepen.jpg"/>
                </div>
              </div>

              <div className="space-x-8 flex justify-between mt-32 md:mt-0 md:justify-center">
                <button
                  className="text-white py-2 px-4 uppercase rounded bg-purple-light hover:bg-blue-500 shadow hover:shadow-lg font-medium transition transform hover:-translate-y-0.5"
                >
                  Connect
                </button>
                <button
                  className="text-white py-2 px-4 uppercase rounded bg-gray-dark hover:bg-gray-800 shadow hover:shadow-lg font-medium transition transform hover:-translate-y-0.5"
                >
                  Message
                </button>
              </div>
            </div>

            <div className="mt-20 text-center border-b pb-12">
              <h1 className="text-4xl font-medium text-gray-700">Manoel Gomes, <span className="font-light text-gray-500">53</span></h1>
              <p className="font-light text-gray-600 mt-3">Salvador, Bahia</p>

              <p className="mt-8 text-gray-500">Composition Student</p>
              <p className="mt-2 text-gray-500">University of Blue Pen</p>
            </div>

            <div className="mt-12 flex flex-col justify-center">
              <p className="text-gray-600 text-center font-light lg:px-16">Manuel Gomes (Cano, 1571 — Rio de Janeiro, October 15, 1648), along with Diogo Nunes, was one of the first two Jesuit missionaries to land in São Luís in November 1615, as chaplain to Alexandre de Moura's navy.</p>
              <button
                className="text-indigo-500 py-2 px-4  font-medium mt-4"
              >
                Show Posts
              </button>
            </div>

          </div>
        </div>
     
    </>

  )
}