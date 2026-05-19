.class public Lcom/oplus/foldswitch/ReflectionHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OPLUS_WINDOW_MANAGER_CLAZZ:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FSS_ReflectionHelper"

.field private static sOplusWindowManager:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "android.view.OplusWindowManager"

    invoke-static {v0}, Lcom/oplus/foldswitch/ReflectionHelper;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oplus/foldswitch/ReflectionHelper;->OPLUS_WINDOW_MANAGER_CLAZZ:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getOplusWindowManager()Ljava/lang/Object;
    .registers 4

    sget-object v0, Lcom/oplus/foldswitch/ReflectionHelper;->sOplusWindowManager:Ljava/lang/Object;

    if-nez v0, :cond_1c

    :try_start_4
    sget-object v0, Lcom/oplus/foldswitch/ReflectionHelper;->OPLUS_WINDOW_MANAGER_CLAZZ:Ljava/lang/Class;

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/oplus/foldswitch/ReflectionHelper;->sOplusWindowManager:Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1c

    :catch_1c
    :cond_1c
    sget-object v0, Lcom/oplus/foldswitch/ReflectionHelper;->sOplusWindowManager:Ljava/lang/Object;

    return-object v0
.end method

.method public static registerOplusFoldSwitchStateObserver(Lcom/oplus/foldswitch/OplusFoldSwitchStateObserver;)V
    .registers 7

    sget-object v0, Lcom/oplus/foldswitch/ReflectionHelper;->OPLUS_WINDOW_MANAGER_CLAZZ:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "registerFoldSwitchStateObserver"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/oplus/foldswitch/OplusFoldSwitchStateObserver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/foldswitch/ReflectionHelper;->getOplusWindowManager()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_22

    goto :goto_39

    :catch_22
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to register fold switch observer, error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FSS_ReflectionHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-void
.end method

.method public static unregisterOplusFoldSwitchStateObserver(Lcom/oplus/foldswitch/OplusFoldSwitchStateObserver;)V
    .registers 7

    sget-object v0, Lcom/oplus/foldswitch/ReflectionHelper;->OPLUS_WINDOW_MANAGER_CLAZZ:Ljava/lang/Class;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string v1, "unregisterFoldSwitchStateObserver"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/oplus/foldswitch/OplusFoldSwitchStateObserver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/oplus/foldswitch/ReflectionHelper;->getOplusWindowManager()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_22

    goto :goto_39

    :catch_22
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to unregister fold switch observer, error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FSS_ReflectionHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-void
.end method
