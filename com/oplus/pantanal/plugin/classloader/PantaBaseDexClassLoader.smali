.class public Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader;
.super Ldalvik/system/DexClassLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader$Companion;

.field public static final FUNCTION:Ljava/lang/String; = "kotlin.jvm.functions."

.field public static final TAG:Ljava/lang/String; = "BaseDexClassLoader"


# instance fields
.field private final dexPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader;->Companion:Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader$Companion;

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

    sget-object v0, Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader;->Companion:Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader$Companion;

    invoke-virtual {v0, p1}, Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader$Companion;->ensureFileReadOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Lcom/oplus/pantanal/plugin/classloader/PantaBaseDexClassLoader;->dexPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-super {p0, p1}, Ldalvik/system/BaseDexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-super {p0}, Ldalvik/system/BaseDexClassLoader;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ldalvik/system/DexClassLoader;->hashCode()I

    move-result p0

    const-string v1, "@"

    invoke-static {v0, v1, p0}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
