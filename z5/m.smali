.class public final Lz5/m;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lz5/w;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz5/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Li4/y;->a:Li4/y;

    const-string v2, "parametersInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz5/m;->a:Lz5/w;

    iput-object v1, p0, Lz5/m;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lz5/w;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz5/w;",
            "Ljava/util/List<",
            "Lz5/w;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parametersInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5/m;->a:Lz5/w;

    iput-object p2, p0, Lz5/m;->b:Ljava/util/List;

    return-void
.end method
