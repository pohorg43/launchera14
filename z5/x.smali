.class public final Lz5/x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz5/x$a;
    }
.end annotation


# static fields
.field public static final a:Lj5/h;

.field public static final b:Lz5/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lz5/e;

    sget-object v1, Lr5/f0;->p:Lh6/c;

    const-string v2, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lz5/e;-><init>(Lh6/c;)V

    sput-object v0, Lz5/x;->a:Lj5/h;

    new-instance v0, Lz5/e;

    sget-object v1, Lr5/f0;->q:Lh6/c;

    const-string v2, "ENHANCED_MUTABILITY_ANNOTATION"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lz5/e;-><init>(Lh6/c;)V

    sput-object v0, Lz5/x;->b:Lz5/e;

    return-void
.end method
