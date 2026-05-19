.class public final Lpantanal/app/bean/CardCategoryKt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/bean/CardCategoryKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final toCategoryInt(Lpantanal/app/bean/CardCategory;)I
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lpantanal/app/bean/CardCategoryKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p0, v2, :cond_23

    if-eq p0, v3, :cond_21

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1e

    if-eq p0, v1, :cond_24

    if-eq p0, v0, :cond_23

    move v0, v1

    goto :goto_24

    :cond_1e
    const/16 v0, 0x64

    goto :goto_24

    :cond_21
    move v0, v2

    goto :goto_24

    :cond_23
    move v0, v3

    :cond_24
    :goto_24
    return v0
.end method
