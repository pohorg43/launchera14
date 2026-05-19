.class public Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ln1/c;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/c;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/bumptech/glide/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/bumptech/glide/b;Lcom/bumptech/glide/f;)V
    .registers 4

    const-class p0, Ld1/g;

    const-class p1, Ljava/io/InputStream;

    new-instance p2, Lcom/bumptech/glide/integration/okhttp3/a$a;

    invoke-direct {p2}, Lcom/bumptech/glide/integration/okhttp3/a$a;-><init>()V

    invoke-virtual {p3, p0, p1, p2}, Lcom/bumptech/glide/f;->i(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    return-void
.end method
