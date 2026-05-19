.class public final Ll5/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll5/w;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll5/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ll5/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll5/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Set;Ljava/util/List;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll5/a0;",
            ">;",
            "Ljava/util/Set<",
            "Ll5/a0;",
            ">;",
            "Ljava/util/List<",
            "Ll5/a0;",
            ">;",
            "Ljava/util/Set<",
            "Ll5/a0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "allDependencies"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modulesWhoseInternalsAreVisible"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directExpectedByDependencies"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allExpectedByDependencies"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll5/x;->a:Ljava/util/List;

    iput-object p2, p0, Ll5/x;->b:Ljava/util/Set;

    iput-object p3, p0, Ll5/x;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll5/a0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ll5/x;->a:Ljava/util/List;

    return-object p0
.end method

.method public b()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll5/a0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ll5/x;->c:Ljava/util/List;

    return-object p0
.end method

.method public c()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ll5/a0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ll5/x;->b:Ljava/util/Set;

    return-object p0
.end method
