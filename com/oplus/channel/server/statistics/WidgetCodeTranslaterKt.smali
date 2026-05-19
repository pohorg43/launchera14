.class public final Lcom/oplus/channel/server/statistics/WidgetCodeTranslaterKt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0004\u001a\n\u0010\u0001\u001a\u00020\u0000*\u00020\u0000\"\u0016\u0010\u0002\u001a\u00020\u00008\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003¨\u0006\u0004"
    }
    d2 = {
        "",
        "getWidgetCodeCardType",
        "CARDTYPE_SPLIT",
        "Ljava/lang/String;",
        "server_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final CARDTYPE_SPLIT:Ljava/lang/String; = "&"


# direct methods
.method public static final getWidgetCodeCardType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "&"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v2

    if-eqz v2, :cond_1f

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v1, v2}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_21

    :cond_1f
    const-string p0, ""

    :goto_21
    return-object p0
.end method
