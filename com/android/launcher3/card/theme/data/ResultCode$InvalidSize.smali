.class public final Lcom/android/launcher3/card/theme/data/ResultCode$InvalidSize;
.super Lcom/android/launcher3/card/theme/data/ResultCode;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/theme/data/ResultCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvalidSize"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 22

    const-string/jumbo v1, "reason"

    const-string v3, "cardName"

    const-string/jumbo v5, "oldCardName"

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, ""

    const-string v13, ""

    const/16 v16, 0x0

    move-object/from16 v6, p0

    move-object/from16 v11, p1

    move/from16 v12, p4

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v6 .. v16}, Lcom/android/launcher3/card/theme/data/ResultCode;-><init>(IIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, -0x1

    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/card/theme/data/ResultCode$InvalidSize;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
