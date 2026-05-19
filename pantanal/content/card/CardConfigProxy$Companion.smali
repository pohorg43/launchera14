.class public final Lpantanal/content/card/CardConfigProxy$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/content/card/CardConfigProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lpantanal/content/card/CardConfigProxy$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCardConfigCallbackId(Lpantanal/content/card/CardConfigProxy$Companion;I)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/content/card/CardConfigProxy$Companion;->getCardConfigCallbackId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getCardConfigCallbackId(I)Ljava/lang/String;
    .registers 13

    const/4 p0, 0x1

    if-eq p1, p0, :cond_40

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3d

    sparse-switch p1, :sswitch_data_44

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string p0, "invalid entrance "

    invoke-static {p0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardConfigProxy"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-string p0, ""

    goto :goto_42

    :sswitch_22
    const-string p0, "card_config_change_to_host_app"

    goto :goto_42

    :sswitch_25
    const-string p0, "card_config_change_to_full_search"

    goto :goto_42

    :sswitch_28
    const-string p0, "card_config_change_to_speech_assistant"

    goto :goto_42

    :sswitch_2b
    const-string p0, "card_config_change_to_calendar"

    goto :goto_42

    :sswitch_2e
    const-string p0, "card_config_change_to_car_launcher"

    goto :goto_42

    :sswitch_31
    const-string p0, "card_config_change_to_health"

    goto :goto_42

    :sswitch_34
    const-string p0, "card_config_change_to_seedling_secondaryhome"

    goto :goto_42

    :sswitch_37
    const-string p0, "card_config_change_to_ums_headset"

    goto :goto_42

    :sswitch_3a
    const-string p0, "card_config_change_to_launcher_system_ui"

    goto :goto_42

    :cond_3d
    const-string p0, "card_config_change_to_launcher"

    goto :goto_42

    :cond_40
    const-string p0, "card_config_change"

    :goto_42
    return-object p0

    nop

    :sswitch_data_44
    .sparse-switch
        0x4 -> :sswitch_3a
        0x8 -> :sswitch_3a
        0x10 -> :sswitch_3a
        0x40 -> :sswitch_3a
        0x80 -> :sswitch_37
        0x100 -> :sswitch_34
        0x200 -> :sswitch_34
        0x800 -> :sswitch_31
        0x1000 -> :sswitch_2e
        0x2000 -> :sswitch_2b
        0x4000 -> :sswitch_28
        0x8000 -> :sswitch_25
        0x40000000 -> :sswitch_22
    .end sparse-switch
.end method
