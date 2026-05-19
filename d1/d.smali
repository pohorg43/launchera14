.class public Ld1/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld1/d$a;,
        Ld1/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld1/n<",
        "Ljava/io/File;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    check-cast p1, Ljava/io/File;

    new-instance p0, Ld1/n$a;

    new-instance p2, Ls1/b;

    invoke-direct {p2, p1}, Ls1/b;-><init>(Ljava/lang/Object;)V

    new-instance p3, Ld1/d$a;

    invoke-direct {p3, p1}, Ld1/d$a;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p2, p3}, Ld1/n$a;-><init>(Lw0/c;Lx0/d;)V

    return-object p0
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/io/File;

    const/4 p0, 0x1

    return p0
.end method
