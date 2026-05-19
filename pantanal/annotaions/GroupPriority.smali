.class public interface abstract annotation Lpantanal/annotaions/GroupPriority;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/annotaions/GroupPriority$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lpantanal/annotaions/GroupPriority$Companion;

.field public static final T0:I = 0x1

.field public static final T1:I = 0x2

.field public static final T2:I = 0x3

.field public static final T3:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lpantanal/annotaions/GroupPriority$Companion;->$$INSTANCE:Lpantanal/annotaions/GroupPriority$Companion;

    sput-object v0, Lpantanal/annotaions/GroupPriority;->Companion:Lpantanal/annotaions/GroupPriority$Companion;

    return-void
.end method
