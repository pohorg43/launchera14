.class public final Lcom/oplus/card/pantanal/application/PantanalCardInitHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPantanalCardInitHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PantanalCardInitHelper.kt\ncom/oplus/card/pantanal/application/PantanalCardInitHelper\n+ 2 GlobalDI.kt\ncom/oplus/card/di/GlobalDI\n*L\n1#1,43:1\n42#2,4:44\n*S KotlinDebug\n*F\n+ 1 PantanalCardInitHelper.kt\ncom/oplus/card/pantanal/application/PantanalCardInitHelper\n*L\n28#1:44,4\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/card/pantanal/application/PantanalCardInitHelper;

.field private static final SUPPORT_INTERRUPT_LOADING_SEEDLING_CARD:Z = true

.field private static final pantanalCardService$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-class v0, Lcom/oplus/card/pantanal/application/IPantanalCardService;

    new-instance v1, Lcom/oplus/card/pantanal/application/PantanalCardInitHelper;

    invoke-direct {v1}, Lcom/oplus/card/pantanal/application/PantanalCardInitHelper;-><init>()V

    sput-object v1, Lcom/oplus/card/pantanal/application/PantanalCardInitHelper;->INSTANCE:Lcom/oplus/card/pantanal/application/PantanalCardInitHelper;

    sget-object v1, Lcom/oplus/card/di/GlobalDI;->INSTANCE:Lcom/oplus/card/di/GlobalDI;

    invoke-virtual {v1}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-virtual {v1}, Lcom/oplus/card/di/GlobalDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Lazy<T of com.oplus.card.di.GlobalDI.injectSingle>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lh4/f;

    sput-object v0, Lcom/oplus/card/pantanal/application/PantanalCardInitHelper;->pantanalCardService$delegate:Lh4/f;

    return-void

    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the class are not injected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getPantanalCardService()Lcom/oplus/card/pantanal/application/IPantanalCardService;
    .registers 1

    sget-object p0, Lcom/oplus/card/pantanal/application/PantanalCardInitHelper;->pantanalCardService$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/pantanal/application/IPantanalCardService;

    return-object p0
.end method

.method public static final init(Landroid/content/Context;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Lpantanal/app/bean/CardCategory;

    sget-object v1, Lpantanal/app/bean/CardCategory;->APP:Lpantanal/app/bean/CardCategory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/CardCategory;->INSTANT:Lpantanal/app/bean/CardCategory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/CardCategory;->SEEDLING:Lpantanal/app/bean/CardCategory;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lpantanal/app/bean/CardCategory;->GROUP_CARD:Lpantanal/app/bean/CardCategory;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    invoke-static {v0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lpantanal/app/bean/Configuration$Builder;

    invoke-direct {v1}, Lpantanal/app/bean/Configuration$Builder;-><init>()V

    invoke-virtual {v1, v3}, Lpantanal/app/bean/Configuration$Builder;->entrance(I)Lpantanal/app/bean/Configuration$Builder;

    move-result-object v1

    sget-object v3, Lpantanal/app/bean/Mode;->STANDARD:Lpantanal/app/bean/Mode;

    invoke-virtual {v1, v3}, Lpantanal/app/bean/Configuration$Builder;->setMode(Lpantanal/app/bean/Mode;)Lpantanal/app/bean/Configuration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lpantanal/app/bean/Configuration$Builder;->supportedCardCategory(Ljava/util/List;)Lpantanal/app/bean/Configuration$Builder;

    move-result-object v0

    new-instance v1, Lpantanal/app/seedling/SeedlingConfiguration;

    sget-object v3, Lpantanal/app/seedling/SeedingEngineType;->Standard:Lpantanal/app/seedling/SeedingEngineType;

    invoke-direct {v1, v3}, Lpantanal/app/seedling/SeedlingConfiguration;-><init>(Lpantanal/app/seedling/SeedingEngineType;)V

    invoke-virtual {v0, v1}, Lpantanal/app/bean/Configuration$Builder;->seedlingConfiguration(Lpantanal/app/seedling/SeedlingConfiguration;)Lpantanal/app/bean/Configuration$Builder;

    move-result-object v0

    sget-object v1, Lcom/oplus/card/helper/SmartEngineHelper;->INSTANCE:Lcom/oplus/card/helper/SmartEngineHelper;

    invoke-virtual {v0, v1}, Lpantanal/app/bean/Configuration$Builder;->launchInterceptor(Lpantanal/app/ILaunchInterceptor;)Lpantanal/app/bean/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lpantanal/app/bean/Configuration$Builder;->supportInterruptLoadingSeedlingCard(Z)Lpantanal/app/bean/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lpantanal/app/bean/Configuration$Builder;->build()Lpantanal/app/bean/Configuration;

    move-result-object v0

    sget-object v1, Lcom/oplus/card/pantanal/application/PantanalCardInitHelper;->INSTANCE:Lcom/oplus/card/pantanal/application/PantanalCardInitHelper;

    invoke-direct {v1}, Lcom/oplus/card/pantanal/application/PantanalCardInitHelper;->getPantanalCardService()Lcom/oplus/card/pantanal/application/IPantanalCardService;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/oplus/card/pantanal/application/IPantanalCardService;->init(Landroid/content/Context;Lpantanal/app/bean/Configuration;)V

    return-void
.end method
