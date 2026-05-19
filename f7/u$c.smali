.class public final Lf7/u$c;
.super Lf7/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf7/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final c:Lf7/u$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf7/u$c;

    invoke-direct {v0}, Lf7/u$c;-><init>()V

    sput-object v0, Lf7/u$c;->c:Lf7/u$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    sget-object v0, Lf7/u$c$a;->a:Lf7/u$c$a;

    const-string v1, "Unit"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lf7/u;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
