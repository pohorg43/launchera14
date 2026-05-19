.class public final Lr5/a0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr5/a0$b;
    }
.end annotation


# static fields
.field public static final d:Lr5/a0$b;

.field public static final e:Lr5/a0;


# instance fields
.field public final a:Lr5/d0;

.field public final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lh6/c;",
            "Lr5/k0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lr5/a0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr5/a0$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lr5/a0;->d:Lr5/a0$b;

    new-instance v0, Lr5/a0;

    sget-object v2, Lr5/y;->a:Lh6/c;

    sget-object v2, Lh4/e;->e:Lh4/e;

    const-string v3, "configuredKotlinVersion"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lr5/y;->d:Lr5/z;

    iget-object v4, v3, Lr5/z;->b:Lh4/e;

    if-eqz v4, :cond_22

    invoke-virtual {v4, v2}, Lh4/e;->a(Lh4/e;)I

    move-result v2

    if-gtz v2, :cond_22

    iget-object v2, v3, Lr5/z;->c:Lr5/k0;

    goto :goto_24

    :cond_22
    iget-object v2, v3, Lr5/z;->a:Lr5/k0;

    :goto_24
    const-string v3, "globalReportLevel"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lr5/k0;->c:Lr5/k0;

    if-ne v2, v3, :cond_2f

    move-object v3, v1

    goto :goto_30

    :cond_2f
    move-object v3, v2

    :goto_30
    new-instance v4, Lr5/d0;

    const/4 v5, 0x4

    invoke-direct {v4, v2, v3, v1, v5}, Lr5/d0;-><init>(Lr5/k0;Lr5/k0;Ljava/util/Map;I)V

    sget-object v1, Lr5/a0$a;->a:Lr5/a0$a;

    invoke-direct {v0, v4, v1}, Lr5/a0;-><init>(Lr5/d0;Lkotlin/jvm/functions/Function1;)V

    sput-object v0, Lr5/a0;->e:Lr5/a0;

    return-void
.end method

.method public constructor <init>(Lr5/d0;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr5/d0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/c;",
            "+",
            "Lr5/k0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "jsr305"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getReportLevelForAnnotation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr5/a0;->a:Lr5/d0;

    iput-object p2, p0, Lr5/a0;->b:Lkotlin/jvm/functions/Function1;

    iget-boolean p1, p1, Lr5/d0;->e:Z

    if-nez p1, :cond_24

    sget-object p1, Lr5/y;->a:Lh6/c;

    check-cast p2, Lr5/a0$a;

    invoke-virtual {p2, p1}, Lr5/a0$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lr5/k0;->b:Lr5/k0;

    if-ne p1, p2, :cond_22

    goto :goto_24

    :cond_22
    const/4 p1, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 p1, 0x1

    :goto_25
    iput-boolean p1, p0, Lr5/a0;->c:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "JavaTypeEnhancementState(jsr305="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lr5/a0;->a:Lr5/d0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getReportLevelForAnnotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lr5/a0;->b:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
