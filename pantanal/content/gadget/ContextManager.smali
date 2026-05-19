.class public final Lpantanal/content/gadget/ContextManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/content/gadget/ContextManager$ConfigPropertiesObserver;,
        Lpantanal/content/gadget/ContextManager$ConfigProperty;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lpantanal/content/gadget/ContextManager;

.field private static final TAG:Ljava/lang/String; = "ConfigPropertiesManager"

.field private static configPropertiesObserver:Lpantanal/content/gadget/ContextManager$ConfigPropertiesObserver;

.field private static configurationChangedCallback:Lpantanal/content/gadget/ContextManager$configurationChangedCallback$1;

.field private static final isRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static lastLocale:Ljava/util/Locale;

.field private static lastUIMode:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/content/gadget/ContextManager;

    invoke-direct {v0}, Lpantanal/content/gadget/ContextManager;-><init>()V

    sput-object v0, Lpantanal/content/gadget/ContextManager;->INSTANCE:Lpantanal/content/gadget/ContextManager;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lpantanal/content/gadget/ContextManager;->isRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lpantanal/content/gadget/ContextManager$configurationChangedCallback$1;

    invoke-direct {v0}, Lpantanal/content/gadget/ContextManager$configurationChangedCallback$1;-><init>()V

    sput-object v0, Lpantanal/content/gadget/ContextManager;->configurationChangedCallback:Lpantanal/content/gadget/ContextManager$configurationChangedCallback$1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$notifyIfNeed(Lpantanal/content/gadget/ContextManager;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/content/gadget/ContextManager;->notifyIfNeed(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static final synthetic access$saveToLastConfig(Lpantanal/content/gadget/ContextManager;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/content/gadget/ContextManager;->saveToLastConfig(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static final synthetic access$showConfigDiff(Lpantanal/content/gadget/ContextManager;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/content/gadget/ContextManager;->showConfigDiff(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private final notifyIfNeed(Landroid/content/res/Configuration;)V
    .registers 22

    move-object/from16 v0, p1

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    sget v3, Lpantanal/content/gadget/ContextManager;->lastUIMode:I

    const/4 v4, 0x1

    if-eq v1, v3, :cond_14

    move v1, v4

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    sget-object v3, Lpantanal/content/gadget/ContextManager;->lastLocale:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyIfNeed, isUIModeChanged = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isLanguageChanged = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v3, Ly8/c;->a:Ly8/c;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "ConfigPropertiesManager"

    move-object v6, v3

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-nez v1, :cond_4b

    if-eqz v0, :cond_7b

    :cond_4b
    sget-object v0, Lpantanal/content/gadget/ContextManager;->configPropertiesObserver:Lpantanal/content/gadget/ContextManager$ConfigPropertiesObserver;

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lpantanal/content/gadget/ContextManager$ConfigPropertiesObserver;->getProperties()[I

    move-result-object v1

    invoke-static {v1, v4}, Li4/k;->q([II)Z

    move-result v3

    if-nez v3, :cond_60

    const/4 v3, 0x2

    invoke-static {v1, v3}, Li4/k;->q([II)Z

    move-result v1

    if-eqz v1, :cond_61

    :cond_60
    move v2, v4

    :cond_61
    if-eqz v2, :cond_7b

    invoke-virtual {v0}, Lpantanal/content/gadget/ContextManager$ConfigPropertiesObserver;->onPropertiesChanged()V

    goto :goto_7b

    :cond_67
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfc

    const/16 v19, 0x0

    const-string v10, "ConfigPropertiesManager"

    const-string v11, "notifyIfNeed, error, because uiMode or language change, but observer is null, so do not notify"

    move-object v9, v3

    invoke-static/range {v9 .. v19}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method private final saveToLastConfig(Landroid/content/res/Configuration;)V
    .registers 2

    iget p0, p1, Landroid/content/res/Configuration;->uiMode:I

    sput p0, Lpantanal/content/gadget/ContextManager;->lastUIMode:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    sput-object p0, Lpantanal/content/gadget/ContextManager;->lastLocale:Ljava/util/Locale;

    return-void
.end method

.method private final showConfigDiff(Landroid/content/res/Configuration;)V
    .registers 19

    sget v0, Lpantanal/content/gadget/ContextManager;->lastUIMode:I

    sget-object v1, Lpantanal/content/gadget/ContextManager;->lastLocale:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showConfigDiff lastUIMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", lastLocale = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showConfigDiff newUIMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newLocale = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v4, "ConfigPropertiesManager"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-string v7, "ConfigPropertiesManager"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    move-object v6, v1

    move-object v8, v0

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final register(Landroid/content/Context;)V
    .registers 26

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lpantanal/content/gadget/ContextManager;->isRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Lpantanal/content/gadget/ContextManager;->configurationChangedCallback:Lpantanal/content/gadget/ContextManager$configurationChangedCallback$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "ConfigPropertiesManager"

    const-string v4, "register, start"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_42

    :cond_29
    sget-object v13, Ly8/c;->a:Ly8/c;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfc

    const/16 v23, 0x0

    const-string v14, "ConfigPropertiesManager"

    const-string v15, "register, has already register, just ignore"

    invoke-static/range {v13 .. v23}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_42
    return-void
.end method

.method public final registerConfigProperties(Lpantanal/content/gadget/ContextManager$ConfigPropertiesObserver;)V
    .registers 13

    const-string p0, "observer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lpantanal/content/gadget/ContextManager;->isRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_10

    sput-object p1, Lpantanal/content/gadget/ContextManager;->configPropertiesObserver:Lpantanal/content/gadget/ContextManager$ConfigPropertiesObserver;

    goto :goto_22

    :cond_10
    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "ConfigPropertiesManager"

    const-string v2, "registerConfigProperties error, since has not register"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_22
    return-void
.end method

.method public final unregister(Landroid/content/Context;)V
    .registers 13

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lpantanal/content/gadget/ContextManager;->isRegister:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_27

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "ConfigPropertiesManager"

    const-string v2, "unregister start, unregister all observers"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lpantanal/content/gadget/ContextManager;->configurationChangedCallback:Lpantanal/content/gadget/ContextManager$configurationChangedCallback$1;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_39

    :cond_27
    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "ConfigPropertiesManager"

    const-string v2, "unregister fail, since has not register, just ignore"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_39
    return-void
.end method
