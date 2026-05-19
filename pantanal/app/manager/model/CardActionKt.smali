.class public final Lpantanal/app/manager/model/CardActionKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final getLifecycleTrackProcessCode(Lpantanal/app/manager/model/CardAction;)I
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lpantanal/app/manager/model/CardAction;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8e

    invoke-virtual {p0}, Lpantanal/app/manager/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1c

    const-string v0, "life_circle"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    const/16 v0, 0x2bc

    const/16 v2, 0x258

    const/16 v3, 0x12c

    if-eqz p0, :cond_8e

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_90

    goto/16 :goto_8e

    :sswitch_2e
    const-string v0, "destroy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto/16 :goto_8e

    :cond_38
    const/16 v1, 0x3e8

    goto :goto_8e

    :sswitch_3b
    const-string v0, "unsubscribed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    goto :goto_8e

    :cond_44
    const/16 v1, 0x384

    goto :goto_8e

    :sswitch_47
    const-string v2, "pause"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_62

    goto :goto_8e

    :sswitch_50
    const-string v0, "show"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_76

    goto :goto_8e

    :sswitch_59
    const-string v2, "hide"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_62

    goto :goto_8e

    :cond_62
    move v1, v0

    goto :goto_8e

    :sswitch_64
    const-string v0, "update_data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8d

    goto :goto_8e

    :sswitch_6d
    const-string v0, "resume"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_76

    goto :goto_8e

    :cond_76
    move v1, v2

    goto :goto_8e

    :sswitch_78
    const-string v0, "subscribed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_81

    goto :goto_8e

    :cond_81
    const/16 v1, 0xc8

    goto :goto_8e

    :sswitch_84
    const-string v0, "create"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8d

    goto :goto_8e

    :cond_8d
    move v1, v3

    :cond_8e
    :goto_8e
    return v1

    nop

    :sswitch_data_90
    .sparse-switch
        -0x509a5f04 -> :sswitch_84
        -0x48b433a6 -> :sswitch_78
        -0x37b237d3 -> :sswitch_6d
        -0x22357aa0 -> :sswitch_64
        0x30dd42 -> :sswitch_59
        0x35dafd -> :sswitch_50
        0x65825f6 -> :sswitch_47
        0x35c12fb3 -> :sswitch_3b
        0x5cd39ffa -> :sswitch_2e
    .end sparse-switch
.end method
