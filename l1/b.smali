.class public Ll1/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll1/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll1/e<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2
    .param p1  # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll1/b;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a(Lz0/w;Lw0/e;)Lz0/w;
    .registers 3
    .param p1  # Lz0/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/w<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lw0/e;",
            ")",
            "Lz0/w<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ll1/b;->a:Landroid/content/res/Resources;

    invoke-static {p0, p1}, Lg1/u;->c(Landroid/content/res/Resources;Lz0/w;)Lz0/w;

    move-result-object p0

    return-object p0
.end method
