.class public final Li6/t;
.super Li6/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/u<",
        "Li6/g$a;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Li6/u;-><init>(ILi6/t;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Li6/g$a;

    invoke-virtual {p0, p1, p2}, Li6/u;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
