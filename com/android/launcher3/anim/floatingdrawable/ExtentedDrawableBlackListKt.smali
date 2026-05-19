.class public final Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableBlackListKt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CARD_ID_CARD_DISABLE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PKG_ICON_DISABLE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    const-string v0, "com.baidu.searchbox"

    const-string v1, "com.shoujiduoduo.ringtone"

    const-string v2, "com.impor.droug"

    const-string v3, "com.ss.android.article.news"

    const-string v4, "com.kuaiyin.player"

    const-string v5, "com.xingin.xhs"

    const-string v6, "com.fk.nearme.gamecenter"

    const-string v7, "com.oplus.member"

    const-string v8, "com.jd.jdlite"

    const-string v9, "cn.TuHu.android"

    const-string v10, "com.yx.jjdmtr.nearme.gamecenter"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li4/o;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableBlackListKt;->PKG_ICON_DISABLE:Ljava/util/List;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0xd3ecf0d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0xd3ecf0c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xd3ecf0b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0xcf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0xd0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const v1, 0xd3eceef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const v1, 0x30e8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const v1, 0x30e8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const v1, 0x30e90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    invoke-static {v0}, Li4/o;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableBlackListKt;->CARD_ID_CARD_DISABLE:Ljava/util/List;

    return-void
.end method

.method public static final getCARD_ID_CARD_DISABLE()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableBlackListKt;->CARD_ID_CARD_DISABLE:Ljava/util/List;

    return-object v0
.end method

.method public static final getPKG_ICON_DISABLE()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableBlackListKt;->PKG_ICON_DISABLE:Ljava/util/List;

    return-object v0
.end method
