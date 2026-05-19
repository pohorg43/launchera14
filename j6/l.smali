.class public final Lj6/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lj6/l;

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lh6/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lh6/c;

    new-instance v1, Lh6/c;

    const-string v2, "kotlin.internal.NoInfer"

    invoke-direct {v1, v2}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lh6/c;

    const-string v2, "kotlin.internal.Exact"

    invoke-direct {v1, v2}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ly0/b;->h([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj6/l;->b:Ljava/util/Set;

    return-void
.end method
