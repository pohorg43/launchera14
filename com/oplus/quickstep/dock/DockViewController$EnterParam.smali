.class public final Lcom/oplus/quickstep/dock/DockViewController$EnterParam;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/dock/DockViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnterParam"
.end annotation


# instance fields
.field private final currentPage:I

.field private final reason:Ljava/lang/String;

.field private final totalPage:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->reason:Ljava/lang/String;

    iput p2, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->currentPage:I

    iput p3, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->totalPage:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/quickstep/dock/DockViewController$EnterParam;Ljava/lang/String;IIILjava/lang/Object;)Lcom/oplus/quickstep/dock/DockViewController$EnterParam;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->reason:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->currentPage:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget p3, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->totalPage:I

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->copy(Ljava/lang/String;II)Lcom/oplus/quickstep/dock/DockViewController$EnterParam;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->currentPage:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->totalPage:I

    return p0
.end method

.method public final copy(Ljava/lang/String;II)Lcom/oplus/quickstep/dock/DockViewController$EnterParam;
    .registers 4

    new-instance p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;-><init>(Ljava/lang/String;II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->reason:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->reason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->currentPage:I

    iget v3, p1, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->currentPage:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget p0, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->totalPage:I

    iget p1, p1, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->totalPage:I

    if-eq p0, p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getCurrentPage()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->currentPage:I

    return p0
.end method

.method public final getReason()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public final getTotalPage()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->totalPage:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->reason:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->currentPage:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget p0, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->totalPage:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "EnterParam(reason="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->currentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/quickstep/dock/DockViewController$EnterParam;->totalPage:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
