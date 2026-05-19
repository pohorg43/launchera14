.class public Lv3/n;
.super Lv3/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv3/m<",
        "Ljava/util/Collection<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lv3/r;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lv3/m;-><init>(Lv3/r;Lv3/m$a;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
