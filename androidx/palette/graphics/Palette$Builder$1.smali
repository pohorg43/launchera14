.class Landroidx/palette/graphics/Palette$Builder$1;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/palette/graphics/Palette$Builder;->generate(Landroidx/palette/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroidx/palette/graphics/Palette;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/palette/graphics/Palette$Builder;

.field public final synthetic val$listener:Landroidx/palette/graphics/Palette$PaletteAsyncListener;


# direct methods
.method public constructor <init>(Landroidx/palette/graphics/Palette$Builder;Landroidx/palette/graphics/Palette$PaletteAsyncListener;)V
    .registers 3

    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder$1;->this$0:Landroidx/palette/graphics/Palette$Builder;

    iput-object p2, p0, Landroidx/palette/graphics/Palette$Builder$1;->val$listener:Landroidx/palette/graphics/Palette$PaletteAsyncListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroidx/palette/graphics/Palette$Builder$1;->this$0:Landroidx/palette/graphics/Palette$Builder;

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    const-string p1, "Palette"

    const-string v0, "Exception thrown during async generate"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidx/palette/graphics/Palette$Builder$1;->doInBackground([Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Landroidx/palette/graphics/Palette;)V
    .registers 2
    .param p1  # Landroidx/palette/graphics/Palette;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Landroidx/palette/graphics/Palette$Builder$1;->val$listener:Landroidx/palette/graphics/Palette$PaletteAsyncListener;

    invoke-interface {p0, p1}, Landroidx/palette/graphics/Palette$PaletteAsyncListener;->onGenerated(Landroidx/palette/graphics/Palette;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Landroidx/palette/graphics/Palette;

    invoke-virtual {p0, p1}, Landroidx/palette/graphics/Palette$Builder$1;->onPostExecute(Landroidx/palette/graphics/Palette;)V

    return-void
.end method
