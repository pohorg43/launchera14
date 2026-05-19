.class public final Ld1/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld1/e$c;,
        Ld1/e$b;,
        Ld1/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld1/n<",
        "TModel;TData;>;"
    }
.end annotation


# instance fields
.field public final a:Ld1/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/e$a<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld1/e$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/e$a<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/e;->a:Ld1/e$a;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lw0/e;",
            ")",
            "Ld1/n$a<",
            "TData;>;"
        }
    .end annotation

    new-instance p2, Ld1/n$a;

    new-instance p3, Ls1/b;

    invoke-direct {p3, p1}, Ls1/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Ld1/e$b;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Ld1/e;->a:Ld1/e$a;

    invoke-direct {p4, p1, p0}, Ld1/e$b;-><init>(Ljava/lang/String;Ld1/e$a;)V

    invoke-direct {p2, p3, p4}, Ld1/n$a;-><init>(Lw0/c;Lx0/d;)V

    return-object p2
.end method

.method public handles(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "data:image"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
