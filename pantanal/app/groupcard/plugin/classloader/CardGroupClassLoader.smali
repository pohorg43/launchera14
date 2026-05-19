.class public final Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader;
.super Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader$Companion;
    }
.end annotation


# static fields
.field private static final CARD_GROUP_CLASS_PREFIX:Ljava/lang/String; = "pantanal.app."

.field public static final Companion:Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader$Companion;

.field private static final PANTANAL_DECISION_CLASS_PREFIX:Ljava/lang/String; = "pantanal.decision."

.field private static final TAG:Ljava/lang/String; = "CardGroupClassLoader"

.field private static final U_TRACE_CLASS_PREFIX:Ljava/lang/String; = "com.oplus.utrace.sdk."


# instance fields
.field private final dexPath:Ljava/lang/String;

.field private final mHostClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader;->Companion:Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 6

    const-string v0, "dexPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mHostClassLoader"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p4, v0}, Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoaderKt;->calLCAParentClassLoader(Ljava/lang/ClassLoader;I)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader;->dexPath:Ljava/lang/String;

    iput-object p4, p0, Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader;->mHostClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader;->Companion:Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader$Companion;

    iget-object v1, p0, Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader;->dexPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader$Companion;->ensureFileReadOnly(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_16

    const-string v3, "kotlin.jvm.functions."

    invoke-static {p1, v3, v2, v0}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-ne v3, v1, :cond_16

    move v3, v1

    goto :goto_17

    :cond_16
    move v3, v2

    :goto_17
    const-string v4, "{\n            val clazz …          clazz\n        }"

    if-nez v3, :cond_50

    if-eqz p1, :cond_27

    const-string v3, "pantanal.app."

    invoke-static {p1, v3, v2, v0}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-ne v3, v1, :cond_27

    move v3, v1

    goto :goto_28

    :cond_27
    move v3, v2

    :goto_28
    if-nez v3, :cond_50

    if-eqz p1, :cond_36

    const-string v3, "pantanal.decision."

    invoke-static {p1, v3, v2, v0}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-ne v3, v1, :cond_36

    move v3, v1

    goto :goto_37

    :cond_36
    move v3, v2

    :goto_37
    if-nez v3, :cond_50

    if-eqz p1, :cond_44

    const-string v3, "com.oplus.utrace.sdk."

    invoke-static {p1, v3, v2, v0}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-ne v0, v1, :cond_44

    goto :goto_45

    :cond_44
    move v1, v2

    :goto_45
    if-eqz v1, :cond_48

    goto :goto_50

    :cond_48
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_59

    :cond_50
    :goto_50
    iget-object p0, p0, Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader;->mHostClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_59
    return-object p0
.end method
