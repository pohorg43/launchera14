.class public final Lf7/u$b;
.super Lf7/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf7/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final c:Lf7/u$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf7/u$b;

    invoke-direct {v0}, Lf7/u$b;-><init>()V

    sput-object v0, Lf7/u$b;->c:Lf7/u$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    sget-object v0, Lf7/u$b$a;->a:Lf7/u$b$a;

    const-string v1, "Int"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lf7/u;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
