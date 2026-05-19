.class public final Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cardName:Ljava/lang/String;

.field private final cardType:Ljava/lang/Integer;

.field private final isForEdit:Z

.field private final itemId:Ljava/lang/Integer;

.field private final itemInfoId:I

.field private final itemType:Ljava/lang/String;

.field private final providerName:Ljava/lang/String;

.field private final spanSize:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore$Creator;

    invoke-direct {v0}, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore$Creator;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Z)V
    .registers 10

    const-string v0, "cardName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    iput-object p2, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->isForEdit:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ZILjava/lang/Object;)Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;
    .registers 20

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget v2, v0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    goto :goto_b

    :cond_a
    move v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardName:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget-object v7, v0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    goto :goto_33

    :cond_32
    move-object v7, p6

    :goto_33
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3a

    iget-object v8, v0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    goto :goto_3c

    :cond_3a
    move-object/from16 v8, p7

    :goto_3c
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_43

    iget-boolean v1, v0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->isForEdit:Z

    goto :goto_45

    :cond_43
    move/from16 v1, p8

    :goto_45
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Z)Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component6()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->isForEdit:Z

    return p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Z)Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;
    .registers 19

    const-string v0, "cardName"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemType"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;

    move-object v1, v0

    move v2, p1

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;

    iget v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    iget v3, p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    return v2

    :cond_55
    iget-boolean p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->isForEdit:Z

    iget-boolean p1, p1, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->isForEdit:Z

    if-eq p0, p1, :cond_5c

    return v2

    :cond_5c
    return v0
.end method

.method public final getCardName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardName:Ljava/lang/String;

    return-object p0
.end method

.method public final getCardType()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getItemId()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getItemInfoId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    return p0
.end method

.method public final getItemType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    return-object p0
.end method

.method public final getProviderName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSpanSize()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardName:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    move v1, v2

    goto :goto_21

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_21
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    if-nez v1, :cond_2a

    move v1, v2

    goto :goto_2e

    :cond_2a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    if-nez v1, :cond_37

    move v1, v2

    goto :goto_3b

    :cond_37
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    if-nez v1, :cond_43

    goto :goto_47

    :cond_43
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_47
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->isForEdit:Z

    if-eqz p0, :cond_4f

    const/4 p0, 0x1

    :cond_4f
    add-int/2addr v0, p0

    return v0
.end method

.method public final isForEdit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->isForEdit:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ExtraDataForStartThemeStore(itemInfoId="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cardName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spanSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", providerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isForEdit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->isForEdit:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ld/b;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string/jumbo p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemInfoId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->spanSize:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->itemId:Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_24

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e

    :cond_24
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2e
    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->cardType:Ljava/lang/Integer;

    if-nez p2, :cond_36

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_40

    :cond_36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_40
    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->providerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;->isForEdit:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
