.class public final Lcom/pantanal/server/content/upkmanage/config/ContextManager$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantanal/server/content/upkmanage/config/ContextManager;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    const-string p0, "newConfig"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ConfigPropertiesManager"

    const-string v0, "onConfigurationChanged"

    invoke-static {p0, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pantanal/server/content/upkmanage/config/ContextManager;->a:Lcom/pantanal/server/content/upkmanage/config/ContextManager;

    const-string v0, "showConfigDiff lastUIMode = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/pantanal/server/content/upkmanage/config/ContextManager;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastLocale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pantanal/server/content/upkmanage/config/ContextManager;->d:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showConfigDiff newUIMode = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newLocale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    sget v2, Lcom/pantanal/server/content/upkmanage/config/ContextManager;->c:I

    const/4 v4, 0x1

    if-eq v0, v2, :cond_5e

    move v0, v4

    goto :goto_5f

    :cond_5e
    move v0, v3

    :goto_5f
    sget-object v2, Lcom/pantanal/server/content/upkmanage/config/ContextManager;->d:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyIfNeed, isUIModeChanged = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isLanguageChanged = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_86

    if-eqz v1, :cond_8b

    :cond_86
    const-string v0, "notifyIfNeed, error, because uiMode or language change, but observer is null, so do not notify"

    invoke-static {p0, v0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    iget p0, p1, Landroid/content/res/Configuration;->uiMode:I

    sput p0, Lcom/pantanal/server/content/upkmanage/config/ContextManager;->c:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    sput-object p0, Lcom/pantanal/server/content/upkmanage/config/ContextManager;->d:Ljava/util/Locale;

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    const-string p0, "ConfigPropertiesManager"

    const-string v0, "onLowMemory"

    invoke-static {p0, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
