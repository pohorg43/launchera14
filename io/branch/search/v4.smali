.class public final Lio/branch/search/v4;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lio/branch/search/m;

.field public final b:Lio/branch/search/p0;

.field public final c:Lio/branch/search/internal/ui/AdLogic;

.field public final d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lio/branch/search/v4;",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;",
            "Ljava/util/List<",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final e:Lio/branch/search/p5;

.field public final f:Lio/branch/search/u4;

.field public g:Z


# direct methods
.method public constructor <init>(Lio/branch/search/m;Lio/branch/search/p0;Lio/branch/search/internal/ui/AdLogic;Lkotlin/jvm/functions/Function2;Lio/branch/search/p5;Lio/branch/search/u4;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/m;",
            "Lio/branch/search/p0;",
            "Lio/branch/search/internal/ui/AdLogic;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/branch/search/v4;",
            "-",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;+",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;>;",
            "Lio/branch/search/p5;",
            "Lio/branch/search/u4;",
            "Z)V"
        }
    .end annotation

    const-string v0, "branchSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLogic"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prepareAds"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextDelegate"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/v4;->a:Lio/branch/search/m;

    iput-object p2, p0, Lio/branch/search/v4;->b:Lio/branch/search/p0;

    iput-object p3, p0, Lio/branch/search/v4;->c:Lio/branch/search/internal/ui/AdLogic;

    iput-object p4, p0, Lio/branch/search/v4;->d:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lio/branch/search/v4;->e:Lio/branch/search/p5;

    iput-object p6, p0, Lio/branch/search/v4;->f:Lio/branch/search/u4;

    iput-boolean p7, p0, Lio/branch/search/v4;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/branch/search/m;Lio/branch/search/p0;Lio/branch/search/internal/ui/AdLogic;Lkotlin/jvm/functions/Function2;Lio/branch/search/p5;Lio/branch/search/u4;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 19

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    move v8, v0

    goto :goto_9

    :cond_7
    move/from16 v8, p7

    :goto_9
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lio/branch/search/v4;-><init>(Lio/branch/search/m;Lio/branch/search/p0;Lio/branch/search/internal/ui/AdLogic;Lkotlin/jvm/functions/Function2;Lio/branch/search/p5;Lio/branch/search/u4;Z)V

    return-void
.end method


# virtual methods
.method public final a()Lio/branch/search/internal/ui/AdLogic;
    .registers 1

    iget-object p0, p0, Lio/branch/search/v4;->c:Lio/branch/search/internal/ui/AdLogic;

    return-object p0
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/branch/search/v4;->g:Z

    return-void
.end method

.method public final b()Lio/branch/search/u4;
    .registers 1

    iget-object p0, p0, Lio/branch/search/v4;->f:Lio/branch/search/u4;

    return-object p0
.end method

.method public final c()Lio/branch/search/m;
    .registers 1

    iget-object p0, p0, Lio/branch/search/v4;->a:Lio/branch/search/m;

    return-object p0
.end method

.method public final d()Lio/branch/search/p5;
    .registers 1

    iget-object p0, p0, Lio/branch/search/v4;->e:Lio/branch/search/p5;

    return-object p0
.end method

.method public final e()Lkotlin/jvm/functions/Function2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lio/branch/search/v4;",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;",
            "Ljava/util/List<",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/v4;->d:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_4d

    instance-of v0, p1, Lio/branch/search/v4;

    if-eqz v0, :cond_4b

    check-cast p1, Lio/branch/search/v4;

    iget-object v0, p0, Lio/branch/search/v4;->a:Lio/branch/search/m;

    iget-object v1, p1, Lio/branch/search/v4;->a:Lio/branch/search/m;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lio/branch/search/v4;->b:Lio/branch/search/p0;

    iget-object v1, p1, Lio/branch/search/v4;->b:Lio/branch/search/p0;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lio/branch/search/v4;->c:Lio/branch/search/internal/ui/AdLogic;

    iget-object v1, p1, Lio/branch/search/v4;->c:Lio/branch/search/internal/ui/AdLogic;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lio/branch/search/v4;->d:Lkotlin/jvm/functions/Function2;

    iget-object v1, p1, Lio/branch/search/v4;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lio/branch/search/v4;->e:Lio/branch/search/p5;

    iget-object v1, p1, Lio/branch/search/v4;->e:Lio/branch/search/p5;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lio/branch/search/v4;->f:Lio/branch/search/u4;

    iget-object v1, p1, Lio/branch/search/v4;->f:Lio/branch/search/u4;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-boolean p0, p0, Lio/branch/search/v4;->g:Z

    iget-boolean p1, p1, Lio/branch/search/v4;->g:Z

    if-ne p0, p1, :cond_4b

    goto :goto_4d

    :cond_4b
    const/4 p0, 0x0

    return p0

    :cond_4d
    :goto_4d
    const/4 p0, 0x1

    return p0
.end method

.method public final f()Z
    .registers 1

    iget-boolean p0, p0, Lio/branch/search/v4;->g:Z

    return p0
.end method

.method public final g()Lio/branch/search/p0;
    .registers 1

    iget-object p0, p0, Lio/branch/search/v4;->b:Lio/branch/search/p0;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lio/branch/search/v4;->a:Lio/branch/search/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/v4;->b:Lio/branch/search/p0;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/v4;->c:Lio/branch/search/internal/ui/AdLogic;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/v4;->d:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/v4;->e:Lio/branch/search/p5;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3e

    :cond_3d
    move v2, v1

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/v4;->f:Lio/branch/search/u4;

    if-eqz v2, :cond_49

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_49
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lio/branch/search/v4;->g:Z

    if-eqz p0, :cond_51

    const/4 p0, 0x1

    :cond_51
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "SkeletonVisitor(branchSearch="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/v4;->a:Lio/branch/search/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", virtualRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/v4;->b:Lio/branch/search/p0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adLogic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/v4;->c:Lio/branch/search/internal/ui/AdLogic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prepareAds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/v4;->d:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contextDelegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/v4;->e:Lio/branch/search/p5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", api="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/v4;->f:Lio/branch/search/u4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", processedAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lio/branch/search/v4;->g:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
