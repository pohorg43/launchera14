.class public final Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final folderIconRelativeCenter:Lh4/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final folderRelativeCenter:Lh4/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final translationX:I

.field private final translationY:I

.field private final valid:Z


# direct methods
.method public constructor <init>()V
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;-><init>(ZIILh4/j;Lh4/j;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZIILh4/j;Lh4/j;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "folderIconRelativeCenter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folderRelativeCenter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->valid:Z

    iput p2, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->translationX:I

    iput p3, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->translationY:I

    iput-object p4, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->folderIconRelativeCenter:Lh4/j;

    iput-object p5, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->folderRelativeCenter:Lh4/j;

    return-void
.end method

.method public synthetic constructor <init>(ZIILh4/j;Lh4/j;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p7, p6, 0x2

    const/4 v0, -0x1

    if-eqz p7, :cond_c

    move p7, v0

    goto :goto_d

    :cond_c
    move p7, p2

    :goto_d
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    move v1, v0

    goto :goto_14

    :cond_13
    move v1, p3

    :goto_14
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_25

    new-instance p4, Lh4/j;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p4, p2, p3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    move-object v2, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_37

    new-instance p5, Lh4/j;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p5, p2, p3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    move-object v0, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v1

    move-object p6, v2

    move-object p7, v0

    invoke-direct/range {p2 .. p7}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;-><init>(ZIILh4/j;Lh4/j;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;ZIILh4/j;Lh4/j;ILjava/lang/Object;)Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-boolean p1, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->valid:Z

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget p2, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->translationX:I

    :cond_c
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->translationY:I

    :cond_13
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->folderIconRelativeCenter:Lh4/j;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->folderRelativeCenter:Lh4/j;

    :cond_21
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->copy(ZIILh4/j;Lh4/j;)Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->valid:Z

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->translationX:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->translationY:I

    return p0
.end method

.method public final component4()Lh4/j;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->folderIconRelativeCenter:Lh4/j;

    return-object p0
.end method

.method public final component5()Lh4/j;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->folderRelativeCenter:Lh4/j;

    return-object p0
.end method

.method public final copy(ZIILh4/j;Lh4/j;)Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;"
        }
    .end annotation

    const-string p0, "folderIconRelativeCenter"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "folderRelativeCenter"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;-><init>(ZIILh4/j;Lh4/j;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;

    iget-boolean v1, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->valid:Z

    iget-boolean v3, p1, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->valid:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->translationX:I

    iget v3, p1, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->translationX:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->translationY:I

    iget v3, p1, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->translationY:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->folderIconRelativeCenter:Lh4/j;

    iget-object v3, p1, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->folderIconRelativeCenter:Lh4/j;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object p0, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->folderRelativeCenter:Lh4/j;

    iget-object p1, p1, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->folderRelativeCenter:Lh4/j;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    return v2

    :cond_37
    return v0
.end method

.method public final getFolderIconRelativeCenter()Lh4/j;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->folderIconRelativeCenter:Lh4/j;

    return-object p0
.end method

.method public final getFolderRelativeCenter()Lh4/j;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->folderRelativeCenter:Lh4/j;

    return-object p0
.end method

.method public final getTranslationX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->translationX:I

    return p0
.end method

.method public final getTranslationY()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->translationY:I

    return p0
.end method

.method public final getValid()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->valid:Z

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->valid:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->translationX:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->translationY:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->folderIconRelativeCenter:Lh4/j;

    invoke-virtual {v1}, Lh4/j;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->folderRelativeCenter:Lh4/j;

    invoke-virtual {p0}, Lh4/j;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "FolderAnimPropsHolder(valid="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->valid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", translationX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->translationX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", translationY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->translationY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", folderIconRelativeCenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->folderIconRelativeCenter:Lh4/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", folderRelativeCenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/anim/light/animparams/FolderAnimPropsHolder;->folderRelativeCenter:Lh4/j;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
