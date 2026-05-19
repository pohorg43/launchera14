.class public final Lq7/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp7/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp7/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lo7/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/t<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo7/t;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/t<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq7/x;->a:Lo7/t;

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lq7/x;->a:Lo7/t;

    invoke-interface {p0, p1, p2}, Lo7/t;->A(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_b

    return-object p0

    :cond_b
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
