.class public Lv3/o;
.super Lv3/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv3/m<",
        "Ljava/util/Set<",
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

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method
