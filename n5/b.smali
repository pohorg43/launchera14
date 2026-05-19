.class public final Ln5/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li5/v0;


# instance fields
.field public final b:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/annotation/Annotation;)V
    .registers 3

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/b;->b:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public b()Li5/w0;
    .registers 2

    sget-object p0, Li5/w0;->a:Li5/w0;

    const-string v0, "NO_SOURCE_FILE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
