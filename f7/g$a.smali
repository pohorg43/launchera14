.class public final Lf7/g$a;
.super Lf7/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf7/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Lf7/g$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf7/g$a;

    invoke-direct {v0}, Lf7/g$a;-><init>()V

    sput-object v0, Lf7/g$a;->b:Lf7/g$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lf7/g;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
