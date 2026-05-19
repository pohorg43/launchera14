.class public final Lpantanal/app/groupcard/plugin/Constants$PluginClassField;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/groupcard/plugin/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PluginClassField"
.end annotation


# static fields
.field public static final INSTANCE:Lpantanal/app/groupcard/plugin/Constants$PluginClassField;

.field public static final PACKAGE_PATH_CARD_GROUP_INIT_MANAGER:Ljava/lang/String; = "pantanal.appplugin.groupcard.CardGroupInitManager"

.field public static final PACKAGE_PATH_CARD_GROUP_WRAPPER:Ljava/lang/String; = "pantanal.appplugin.groupcard.GroupCardWrapper"

.field public static final PACKAGE_PATH_PLUGIN_GROUP_CARD_MANAGER:Ljava/lang/String; = "pantanal.appplugin.groupcard.PluginGroupCardManager"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/groupcard/plugin/Constants$PluginClassField;

    invoke-direct {v0}, Lpantanal/app/groupcard/plugin/Constants$PluginClassField;-><init>()V

    sput-object v0, Lpantanal/app/groupcard/plugin/Constants$PluginClassField;->INSTANCE:Lpantanal/app/groupcard/plugin/Constants$PluginClassField;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
