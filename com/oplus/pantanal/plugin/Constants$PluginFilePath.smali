.class public final Lcom/oplus/pantanal/plugin/Constants$PluginFilePath;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/pantanal/plugin/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PluginFilePath"
.end annotation


# static fields
.field public static final FILE_CONFIG:Ljava/lang/String; = "config.json"

.field public static final INSTANCE:Lcom/oplus/pantanal/plugin/Constants$PluginFilePath;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/pantanal/plugin/Constants$PluginFilePath;

    invoke-direct {v0}, Lcom/oplus/pantanal/plugin/Constants$PluginFilePath;-><init>()V

    sput-object v0, Lcom/oplus/pantanal/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/pantanal/plugin/Constants$PluginFilePath;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
