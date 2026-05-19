.class public final Lio/branch/search/r2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/lang/Integer;

.field public final h:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Z)V
    .registers 10

    const-string v0, "query"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "should_execute_now_query"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/branch/search/r2;->a:I

    iput-object p2, p0, Lio/branch/search/r2;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/r2;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/r2;->d:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/r2;->e:Ljava/lang/String;

    iput p6, p0, Lio/branch/search/r2;->f:I

    iput-object p7, p0, Lio/branch/search/r2;->g:Ljava/lang/Integer;

    iput-boolean p8, p0, Lio/branch/search/r2;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/r2;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/r2;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()I
    .registers 1

    iget p0, p0, Lio/branch/search/r2;->a:I

    return p0
.end method

.method public final d()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/r2;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/r2;->e:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_4f

    instance-of v0, p1, Lio/branch/search/r2;

    if-eqz v0, :cond_4d

    check-cast p1, Lio/branch/search/r2;

    iget v0, p0, Lio/branch/search/r2;->a:I

    iget v1, p1, Lio/branch/search/r2;->a:I

    if-ne v0, v1, :cond_4d

    iget-object v0, p0, Lio/branch/search/r2;->b:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/r2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lio/branch/search/r2;->c:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/r2;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lio/branch/search/r2;->d:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/r2;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lio/branch/search/r2;->e:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/r2;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget v0, p0, Lio/branch/search/r2;->f:I

    iget v1, p1, Lio/branch/search/r2;->f:I

    if-ne v0, v1, :cond_4d

    iget-object v0, p0, Lio/branch/search/r2;->g:Ljava/lang/Integer;

    iget-object v1, p1, Lio/branch/search/r2;->g:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-boolean p0, p0, Lio/branch/search/r2;->h:Z

    iget-boolean p1, p1, Lio/branch/search/r2;->h:Z

    if-ne p0, p1, :cond_4d

    goto :goto_4f

    :cond_4d
    const/4 p0, 0x0

    return p0

    :cond_4f
    :goto_4f
    const/4 p0, 0x1

    return p0
.end method

.method public final f()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lio/branch/search/r2;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public final g()Z
    .registers 1

    iget-boolean p0, p0, Lio/branch/search/r2;->h:Z

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lio/branch/search/r2;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/branch/search/r2;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/branch/search/r2;->c:Ljava/lang/String;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/branch/search/r2;->d:Ljava/lang/String;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/branch/search/r2;->e:Ljava/lang/String;

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/branch/search/r2;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/branch/search/r2;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_46
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lio/branch/search/r2;->h:Z

    if-eqz p0, :cond_4e

    const/4 p0, 0x1

    :cond_4e
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ScheduledQuery(query_id="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/branch/search/r2;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/r2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bindings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/r2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", should_execute_now_query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/r2;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", should_execute_now_query_bindings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/r2;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/branch/search/r2;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transaction_group_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/r2;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uses_cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lio/branch/search/r2;->h:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
