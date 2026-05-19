.class public final Lk1/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lw0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/d<",
            "Lcom/bumptech/glide/load/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lw0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/d<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/bumptech/glide/load/b;->a:Lcom/bumptech/glide/load/b;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    invoke-static {v1, v0}, Lw0/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lw0/d;

    move-result-object v0

    sput-object v0, Lk1/e;->a:Lw0/d;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    invoke-static {v1, v0}, Lw0/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lw0/d;

    move-result-object v0

    sput-object v0, Lk1/e;->b:Lw0/d;

    return-void
.end method
