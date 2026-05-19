.class public final Lf7/q;
.super Lf7/a$a;
.source ""

# interfaces
.implements Lv4/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T::TV;>",
        "Lf7/a$a<",
        "TK;TV;TT;>;",
        "Lv4/b<",
        "Lf7/a<",
        "TK;TV;>;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lz4/d;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/d<",
            "+TK;>;I)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lf7/a$a;-><init>(Lz4/d;I)V

    return-void
.end method
