.class public final Lpantanal/app/groupcard/popup/PopupItem;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final clickListener:Landroid/view/View$OnClickListener;

.field private final iconView:Landroid/view/View;

.field private final id:Lpantanal/app/groupcard/popup/PopupItemId;

.field private final labelView:Landroid/widget/TextView;

.field private final layoutView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lpantanal/app/groupcard/popup/PopupItemId;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/groupcard/popup/PopupItem;->id:Lpantanal/app/groupcard/popup/PopupItemId;

    iput-object p2, p0, Lpantanal/app/groupcard/popup/PopupItem;->iconView:Landroid/view/View;

    iput-object p3, p0, Lpantanal/app/groupcard/popup/PopupItem;->labelView:Landroid/widget/TextView;

    iput-object p4, p0, Lpantanal/app/groupcard/popup/PopupItem;->layoutView:Landroid/view/View;

    iput-object p5, p0, Lpantanal/app/groupcard/popup/PopupItem;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic constructor <init>(Lpantanal/app/groupcard/popup/PopupItemId;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View$OnClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 15

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_7

    move-object v3, v0

    goto :goto_8

    :cond_7
    move-object v3, p2

    :goto_8
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_e

    move-object v4, v0

    goto :goto_f

    :cond_e
    move-object v4, p3

    :goto_f
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_15

    move-object v5, v0

    goto :goto_16

    :cond_15
    move-object v5, p4

    :goto_16
    move-object v1, p0

    move-object v2, p1

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lpantanal/app/groupcard/popup/PopupItem;-><init>(Lpantanal/app/groupcard/popup/PopupItemId;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/groupcard/popup/PopupItem;Lpantanal/app/groupcard/popup/PopupItemId;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View$OnClickListener;ILjava/lang/Object;)Lpantanal/app/groupcard/popup/PopupItem;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lpantanal/app/groupcard/popup/PopupItem;->id:Lpantanal/app/groupcard/popup/PopupItemId;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lpantanal/app/groupcard/popup/PopupItem;->iconView:Landroid/view/View;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lpantanal/app/groupcard/popup/PopupItem;->labelView:Landroid/widget/TextView;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lpantanal/app/groupcard/popup/PopupItem;->layoutView:Landroid/view/View;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lpantanal/app/groupcard/popup/PopupItem;->clickListener:Landroid/view/View$OnClickListener;

    :cond_21
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lpantanal/app/groupcard/popup/PopupItem;->copy(Lpantanal/app/groupcard/popup/PopupItemId;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View$OnClickListener;)Lpantanal/app/groupcard/popup/PopupItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lpantanal/app/groupcard/popup/PopupItemId;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/popup/PopupItem;->id:Lpantanal/app/groupcard/popup/PopupItemId;

    return-object p0
.end method

.method public final component2()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/popup/PopupItem;->iconView:Landroid/view/View;

    return-object p0
.end method

.method public final component3()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/popup/PopupItem;->labelView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final component4()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/popup/PopupItem;->layoutView:Landroid/view/View;

    return-object p0
.end method

.method public final component5()Landroid/view/View$OnClickListener;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/popup/PopupItem;->clickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public final copy(Lpantanal/app/groupcard/popup/PopupItemId;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View$OnClickListener;)Lpantanal/app/groupcard/popup/PopupItem;
    .registers 12

    const-string p0, "id"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clickListener"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lpantanal/app/groupcard/popup/PopupItem;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lpantanal/app/groupcard/popup/PopupItem;-><init>(Lpantanal/app/groupcard/popup/PopupItemId;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/groupcard/popup/PopupItem;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/groupcard/popup/PopupItem;

    iget-object v1, p0, Lpantanal/app/groupcard/popup/PopupItem;->id:Lpantanal/app/groupcard/popup/PopupItemId;

    iget-object v3, p1, Lpantanal/app/groupcard/popup/PopupItem;->id:Lpantanal/app/groupcard/popup/PopupItemId;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lpantanal/app/groupcard/popup/PopupItem;->iconView:Landroid/view/View;

    iget-object v3, p1, Lpantanal/app/groupcard/popup/PopupItem;->iconView:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lpantanal/app/groupcard/popup/PopupItem;->labelView:Landroid/widget/TextView;

    iget-object v3, p1, Lpantanal/app/groupcard/popup/PopupItem;->labelView:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lpantanal/app/groupcard/popup/PopupItem;->layoutView:Landroid/view/View;

    iget-object v3, p1, Lpantanal/app/groupcard/popup/PopupItem;->layoutView:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object p0, p0, Lpantanal/app/groupcard/popup/PopupItem;->clickListener:Landroid/view/View$OnClickListener;

    iget-object p1, p1, Lpantanal/app/groupcard/popup/PopupItem;->clickListener:Landroid/view/View$OnClickListener;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    return v2

    :cond_3f
    return v0
.end method

.method public final getClickListener()Landroid/view/View$OnClickListener;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/popup/PopupItem;->clickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public final getIconView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/popup/PopupItem;->iconView:Landroid/view/View;

    return-object p0
.end method

.method public final getId()Lpantanal/app/groupcard/popup/PopupItemId;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/popup/PopupItem;->id:Lpantanal/app/groupcard/popup/PopupItemId;

    return-object p0
.end method

.method public final getLabelView()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/popup/PopupItem;->labelView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getLayoutView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/popup/PopupItem;->layoutView:Landroid/view/View;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lpantanal/app/groupcard/popup/PopupItem;->id:Lpantanal/app/groupcard/popup/PopupItemId;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/groupcard/popup/PopupItem;->iconView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Landroid/view/View;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/groupcard/popup/PopupItem;->labelView:Landroid/widget/TextView;

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Landroid/widget/TextView;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/groupcard/popup/PopupItem;->layoutView:Landroid/view/View;

    if-nez v1, :cond_28

    goto :goto_2c

    :cond_28
    invoke-virtual {v1}, Landroid/view/View;->hashCode()I

    move-result v2

    :goto_2c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lpantanal/app/groupcard/popup/PopupItem;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lpantanal/app/groupcard/popup/PopupItem;->id:Lpantanal/app/groupcard/popup/PopupItemId;

    iget-object v1, p0, Lpantanal/app/groupcard/popup/PopupItem;->iconView:Landroid/view/View;

    iget-object v2, p0, Lpantanal/app/groupcard/popup/PopupItem;->labelView:Landroid/widget/TextView;

    iget-object v3, p0, Lpantanal/app/groupcard/popup/PopupItem;->layoutView:Landroid/view/View;

    iget-object p0, p0, Lpantanal/app/groupcard/popup/PopupItem;->clickListener:Landroid/view/View$OnClickListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PopupItem(id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", iconView="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", labelView="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", layoutView="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", clickListener="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
