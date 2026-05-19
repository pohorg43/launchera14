.class public final Lpantanal/app/groupcard/plugin/CardGroupPluginManager$initCardGroupPluginClassLoader$1$1$1;
.super Lcom/oplus/pantanal/plugin/PluginContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->initCardGroupPluginClassLoader()Ldalvik/system/DexClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $classLoader:Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader;Landroid/content/res/Resources$Theme;)V
    .registers 5

    iput-object p3, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$initCardGroupPluginClassLoader$1$1$1;->$classLoader:Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader;

    invoke-direct {p0, p1, p4, p2}, Lcom/oplus/pantanal/plugin/PluginContext;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$initCardGroupPluginClassLoader$1$1$1;->$classLoader:Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader;

    return-object p0
.end method
