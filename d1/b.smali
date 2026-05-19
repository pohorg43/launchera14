.class public Ld1/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld1/b$d;,
        Ld1/b$a;,
        Ld1/b$c;,
        Ld1/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld1/n<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field public final a:Ld1/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld1/b$b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/b$b<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/b;->a:Ld1/b$b;

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

    check-cast p1, [B

    new-instance p2, Ld1/n$a;

    new-instance p3, Ls1/b;

    invoke-direct {p3, p1}, Ls1/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Ld1/b$c;

    iget-object p0, p0, Ld1/b;->a:Ld1/b$b;

    invoke-direct {p4, p1, p0}, Ld1/b$c;-><init>([BLd1/b$b;)V

    invoke-direct {p2, p3, p4}, Ld1/n$a;-><init>(Lw0/c;Lx0/d;)V

    return-object p2
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, [B

    const/4 p0, 0x1

    return p0
.end method
