.class public Lcom/bumptech/glide/integration/okhttp3/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/okhttp3/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld1/n<",
        "Ld1/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le8/d$a;


# direct methods
.method public constructor <init>(Le8/d$a;)V
    .registers 2
    .param p1  # Le8/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/integration/okhttp3/a;->a:Le8/d$a;

    return-void
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Object;IILw0/e;)Ld1/n$a;
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ld1/g;

    new-instance p2, Ld1/n$a;

    new-instance p3, Lv0/a;

    iget-object p0, p0, Lcom/bumptech/glide/integration/okhttp3/a;->a:Le8/d$a;

    invoke-direct {p3, p0, p1}, Lv0/a;-><init>(Le8/d$a;Ld1/g;)V

    invoke-direct {p2, p1, p3}, Ld1/n$a;-><init>(Lw0/c;Lx0/d;)V

    return-object p2
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ld1/g;

    const/4 p0, 0x1

    return p0
.end method
