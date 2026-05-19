.class public final Lx6/e$a;
.super Lx6/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lx6/e$f;Lx6/k;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lx6/e;-><init>(Ljava/lang/String;Lx6/e$f;Lx6/k;)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/String;Ljava/lang/Object;)Lx6/e$o;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)",
            "Lx6/e$o<",
            "TV;>;"
        }
    .end annotation

    new-instance p0, Lx6/e$o;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lx6/e$o;-><init>(Ljava/lang/Object;Z)V

    return-object p0
.end method
