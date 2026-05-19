.class public final Lw6/q;
.super Lw6/a;
.source ""


# direct methods
.method public constructor <init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/m;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lj5/c;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compute"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lw6/a;-><init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
