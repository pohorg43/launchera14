.class public final Lj5/h$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lj5/h$a;

.field public static final b:Lj5/h;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lj5/h$a;

    invoke-direct {v0}, Lj5/h$a;-><init>()V

    sput-object v0, Lj5/h$a;->a:Lj5/h$a;

    new-instance v0, Lj5/h$a$a;

    invoke-direct {v0}, Lj5/h$a$a;-><init>()V

    sput-object v0, Lj5/h$a;->b:Lj5/h;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
