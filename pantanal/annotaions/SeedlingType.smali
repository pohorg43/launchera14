.class public interface abstract annotation Lpantanal/annotaions/SeedlingType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/annotaions/SeedlingType$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lpantanal/annotaions/SeedlingType$Companion;

.field public static final IMMEDIATE:I = 0x2

.field public static final LIVE:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/annotaions/SeedlingType$Companion;->$$INSTANCE:Lpantanal/annotaions/SeedlingType$Companion;

    sput-object v0, Lpantanal/annotaions/SeedlingType;->Companion:Lpantanal/annotaions/SeedlingType$Companion;

    return-void
.end method
