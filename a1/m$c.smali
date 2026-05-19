.class public La1/m$c;
.super La1/c;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La1/c<",
        "La1/m$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La1/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La1/l;
    .registers 2

    new-instance v0, La1/m$b;

    invoke-direct {v0, p0}, La1/m$b;-><init>(La1/m$c;)V

    return-object v0
.end method

.method public d(ILandroid/graphics/Bitmap$Config;)La1/m$b;
    .registers 3

    invoke-virtual {p0}, La1/c;->b()La1/l;

    move-result-object p0

    check-cast p0, La1/m$b;

    iput p1, p0, La1/m$b;->b:I

    iput-object p2, p0, La1/m$b;->c:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method
